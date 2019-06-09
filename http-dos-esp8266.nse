local os = require "os"
local datetime = require "datetime"
local vulns = require "vulns"
local stdnse = require "stdnse"
local string = require "string"
local table = require "table"

description = [[
If system is running a HTTP server on ESP8266
warns about DoS vulnerability - recommends switch
to MQTT client
]]

---
--@usage
-- nmap --script esp8266-http-dos.nse 127.0.0.1
-- sudo nmap -sU -sS --script esp8266-http-dos.nse -p 80 127.0.0.1
--
--@output
-- Host script results:
-- |_ esp8266-http-dos: false 
--

author = "Jean Fobe <jeanfobe@ime.usp.br>"
license = "Same as Nmap--See https://nmap.org/book/man-legal.html"

hostrule = function(host)
  local esp = false 
  local os_detection = stdnse.get_script_args(SCRIPT_NAME .. ".skip-os") or false
  if host.os then
    for k, v in pairs(host.os) do -- Loop through OS matches
      if string.match(v['name'], "Espressif") then
        esp = true
      end
    end
  end
  return (nmap.get_ports(host, nil, "tcp", "open") ~= nil and esp) or (os_detection)
end

action = function(host,port)
  local status, vulnerabilities
  local report = vulns.Report:new(SCRIPT_NAME, host, port)

  status, vulnerabilities = check_vulns(host, port)
  if status then
  local vuln = { title = "ESP8266-HTTP-DoS", description = "ESP8266 is vulnerable to HTTP DoS requests - use MQTT",
        references = "This work", disclosure_date = "09-Jun-19",
        IDS = "esp-http"}
  vuln.state = vulns.STATE.LIKELY_VULN
  vuln.extra_info = "A significant http request load is enough to crash the server"
  report:add_vulns(SCRIPT_NAME, vuln)
  end
  return report:make_output()
end

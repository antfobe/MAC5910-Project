# MAC5910-Project
Security best practices for IoT based SCADA sensors, increasing attack cost

    - NS-3.27: https://www.nsnam.org/releases/ns-allinone-3.27.tar.bz2
    - NetAnim: https://www.nsnam.org/wiki/NetAnim_3.108,
        - hg clone http://code.nsnam.org/netanim && cd netanim && make clean && qmake NetAnim.pro && make
        
# Attack List
Source: http://jin.ece.ufl.edu/papers/HASS2018_IoT_Survey.pdf

Emphasis will be given to Network and Perception layers


* Application Layer:
    * Code Injection
    * Buffer Overflow
    * Sensitive Data Permission/Manipulation
    * Phishing Attack
    * Authentication and Authorization
* Middleware Layer:
    * Flooding Attack in Cloud
    * Cloud Malware Injection
    * Signature Wrapping Attac
    * Web Browser Attack
    * SQL Injection Attack
* Network Layer:
    * DoS Attack
    * Sybil Attack
    * Sinkhole Attack
    * Sniffing Attack
    * Traffic Analysis
    * Replay Attack
    * Man-in-the-Middle Attack
* Perception Layer:
    * Unauthorized Access to the Tags
    * Tag Cloning
    * Eavesdropping
    * RF Jamming
    * Spoofing Attack
    * Sleep Deprivation Attack

# ESP8266 emulations via qemu
Source: https://github.com/SuperHouse/esp-open-rtos/issues/230
Steps:

    - git clone https://github.com/OSLL/qemu-xtensa.git && cd qemu-xtensa
    - git branch xtensa-8266
    - ./configure --disable-werror --target-list=xtensa-softmmu,xtensaeb-softmmu --python=/usr/bin/python2 --disable-glusterfs --disable-guest-agent
    - make

Qemu binary is at qemu-xtensa/xtensa-softmmu/qemu-system-xtensa
Now for esptool: https://github.com/tommie/esptool-ck

    - https://github.com/tommie/esptool-ck.git && cd esptool-ck
    - make

Skeleton example: https://github.com/esp8266/esp8266-wiki/wiki/Building
After building, run with

    - qemu-xtensa/xtensa-softmmu/qemu-system-xtensa -M esp8266 -nographic -serial tcp::4444,server -monitor none -s -kernel eagle.app.v6.{irom0text.bin,out}
    - telnet localhost 4444

PS: The IoT_Demo binaries are at `Espressif/ESP8266/esp_iot_sdk_v0.9.3/IoT_Demo/.output/eagle/debug/image/`

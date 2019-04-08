# MAC5910-Project
Security best practices for IoT based SCADA sensors, increasing attack cost

    - NS-3.27: https://www.nsnam.org/releases/ns-allinone-3.27.tar.bz2
    - NetAnim: https://www.nsnam.org/wiki/NetAnim_3.108,
        - hg clone http://code.nsnam.org/netanim && cd netanim && make clean && qmake NetAnim.pro && make
        
# Attack List
Source: http://jin.ece.ufl.edu/papers/HASS2018_IoT_Survey.pdf
Emphasis will be given to Network and Perception layers
    - Application Layer:
        - Code Injection
        - Buffer Overflow
        - Sensitive Data Permission/Manipulation
        - Phishing Attack
        - Authentication and Authorization
    - Middleware Layer:
        - Flooding Attack in Cloud
        - Cloud Malware Injection
        - Signature Wrapping Attac
        - Web Browser Attack
        - SQL Injection Attack
    - Network Layer:
        - DoS Attack
        - Sybil Attack
        - Sinkhole Attack
        - Sniffing Attack
        - Traffic Analysis
        - Replay Attack
        - Man-in-the-Middle Attack
    - Perception Layer:
        - Unauthorized Access to the Tags
        - Tag Cloning
        - Eavesdropping
        - RF Jamming
        - Spoofing Attack
        - Sleep Deprivation Attack

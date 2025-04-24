## Endpoint security
----
#### Endpoint:
A computer or a device in the network that communicates. These are the entry points for cyberattack where the exploit the code, vulnerabilities and the assets.

#### Endpoint protection modules (EPM)

- This module in XSIAM focus a specific attack in the chain of attacks. Including, reconnaissance prevention, memory corruption prevention, code execution prevention, and kernel protection.
- Over 50 endpoint modules are present,
	- Anti-ransomeware
	- Brute Force protection
	- DLL Hijacking
	- Java Deserialization Exploit Protection Module
	- Kernel Integrity Monitor (KIM)
	- Reverse Shell Protection
	- ShellLink
	- Wildfire

#### Endpoint protection capabilities

1. Exploit security Profile
2. Malware security Profile
#### Endpoint Security Profiles

XSIAM offers different security profiles, so it can be applied to group of endpoints later with customization and efficiency. When the rule matches it will apply the profiles.

1. Restriction Profile: 
	- Restricting the executable permission in specific folder to avoid mal/vul files to run.
2. Exploit Profile:
	- Exploit profiles are instrumental in blocking attempts to exploit vulnerabilities in browsers and operating systems
3. Agent Settings Profile:
	- Agent Settings profiles enable customization of settings that apply to the XSIAM agent including disk space quota and UI options ( Like the restricted read only XSIAM tenant ).
4. Malware Profiles:
	- Detect the malware as well know how to handle those malwares.
5. Exceptions Profiles:
	- Exceptions Security profiles provide a means to override security policies selectively. They allow specific processes or files to run on an endpoint, disable specific Behavioral Threat Protection (BTP) rules, permit known digital signers, and import exceptions from the XSIAM support team. These profiles are supported across Windows, Mac, and Linux platforms.


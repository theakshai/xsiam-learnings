XSIAM has various modules specific for each cybsec parts.
1. ASM
2. Forensics
3. TIM
4. Automation
5. ITDR
6. 

###### ASM:
1. External Assets = Scanned by ASM and let the organisation know about it.
2. Asset Attribution Evidence
3. External Services = ip / domain where a service runs and listen for scan process. XSIAM keeps and inventory of this.
4. ASM dashboard

###### TIM:
basically collects data enrich the fields create verdicts and give the data to siem or analysts. Also you can run a playbook for the specific T findings.

Key terms:
Unit 42 intel, 3rd party data enrichment
creation of playbooks
wildfire analysis for sample analysis

Forensics:
Forensics in XSIAM is a systematic approach to collecting and analyzing digital evidence to investigate security incidents


###### Event Forwarding:
You can export or store the data at external source. Useful for privacy, compliance, log consolidation and 3rd party security services.


###### XDR agents:
These agents in endpoint and servers to collect security data

###### XDR collectors:

- on perm agent for windows and linux
- Are deployed when third-party logs require ingestion beyond standard Broker VM configurations

###### Engines
- It is installed in remote network
- Act as a connector to allow for integrations to work in a concealed network that cannot be directly connected to

###### Data source onboarder
The Data Source Onboarder is a tool used to facilitate the onboarding of new data sources and the configuration of related settings.

###### Market place integration
Marketplace integrations refers to pre-built connectors that allow the platform to interact with various third-party tools, services, and applications
1. Data source components:
	1. Console
	2. Broker VM
	3. XSIAM Agent
	4. XDR = on prem
	5. Engines = remote network
	6. CLCS = cloud log connection service, replace CDL (cloud data lake ) as a data broker
	7. ASM/TI
2. Supported log formats:
	1. JSON = auto detect by XDR/XSIAM to raw table
	2. CEF/LEEF = Standard header types with key value pairs,auto detect by XDR/XSIAM to raw table
	3. Delimited logs = only in _raw_data no auto detect, log files and syslog , like csv
	4. Unstructured logs =  unkown structure
3. Types:
	1. Broker VM methods:
		1. Syslog
		2. JSON
		3. CEF = Common Event Format
		4. Kafka
		5. Windows Events logs
		6. Netflow
		7. CSV
		8. API integration
		9. Flat files
		10. Custom data formats
4. The Broker VM serves the sole purpose of data collection, while the engine, which is more intricate, is primarily designed for on-premises automation. Additionally, it supports other functionalities such as API collection, despite being on-premises
5. It's important to understand the roles of data models versus parsers during data ingestion. At a high-level, parsing occurs at the moment the data comes in. Data modeling occurs once the data is set.
6. Data source on-boader is free for use.
7. Add data source -> Source -> Configure -> Test -> Connect
	   
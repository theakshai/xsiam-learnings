##### Terms:
----
1. Threat Intelligence
2. Threat Intelligence Platform
3. Threat Intelligence Actions
	1. Data Collection
	2. Data normalization
	3. Enrichment
	4. Actionable Intel and Delivery
4. Data from unit42 to understand better about the TIM families
5. It is an add-on license to XSIAM

##### Indicators:
---
Basically consists of fields and rate them with scripts and overwrite with the scripts as well. Can customized, merged exported and have a lifecycle

`Lifecycle`: Create -> List and Map -> Enhance -> Use -> expire

3 parts:
1. common fields
	1. Name
	2. regex
	3. layout
	4. expiration
2. custom fields
	1. ASN
	2. First seen, last seen
	3. country code
	4. dns name
	5. information
3. scripts
	1. format
	2. reputation command
	3. reputation script
	4. enhancement script

Metrics:
1. Verdicts
	1. unknown
	2. benign
	3. suspicious
	4. malicious
2. Hits
3. New hits
4. Top common indicators
5. types
	1. ip
	2. host
	3. dns
	4. asn
	5. account
	6. companign
	7. malware
	8. report 
	9. file
	10. domain
	11. ipv6
6. rules
7. source reliability as per high scores
	1. manual
	2. script
	3. thrid party
	4. feed
	5. 

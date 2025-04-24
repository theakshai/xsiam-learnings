1. Used to encrypt the data at rest
2. Challenge needs to involve many people from alto, so via XSIAM gateway they can import and rotate the keys.
3. import keys, rotate keys with versioning, auditing and notifications
4. import process need to complete by 3 days, XSIAM: all license, XDR: via feature flag, XSOAR: via feature flag
5. dedicated KMS in gcp and has 2 encryption keys ( 1 for bigquery and 1 for other services )
6. 
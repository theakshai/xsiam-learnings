Revision: Broker VM concepts
1. Editable configuration details
	1. Device name and FQDN ( context sensitive )
	2. Network interface all about the broker VM network info. Atleast one of them should be admin to the web to access them.
	3. Storage = to allocate for data caching.
	4. Proxy server = http, sock4 and sock5 all require ip and password
	5. Web UI listening port
	6. Network Time Protocol = timing management for syslog
	7. Internal network
	8. Auto upgrade = 4 hrs and configurable
	9. Monitoring = monitor broker VM usage from 9100 port metrics
	10. SSH access , admin role is must to configure it
	11. Broker UI password = length should be 8
	12. SSL certs = xdr and broker vm connection
2. You can download logs from the VM or the UI
3. stats, auth, logs applets,services, console
4. Reboot , not recommended access only after few minutes.
5. Broker VM command line directly from the UI
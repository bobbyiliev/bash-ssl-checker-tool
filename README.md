# bash-ssl-checker-tool
Very simple bash script which you could use to gain general information for the SSL certificate of a certain domain name. 

It is based on the functionality of the popular https://sslshopper.com website, but it's a command line tool.

The script has been tested on CentOS, Ubuntu, Mint and Debian.

The script provides you with the following information:

* The domain name that the SSL certificate has been issued for
* The number of days the SSL certificate expires in:
* The dates when the certificate was issued on and expieres on
* The certificate has been issued by:
* Supported TLS versions
* Certificate Fingerprint

Usage:

In order to use the script just download the ssl file, make it executable and run it:

```
wget https://raw.githubusercontent.com/bobbyiliev/bash-ssl-checker-tool/master/ssl
chmod +x ssl
./ssl yourdomain.com
```

Output:

The output that you would get will look like this:

```
The bobbyiliev.com domain name seems valid

# The SSL certificate has been issued for:
Domain: CN = bobbyiliev.com
----

# The SSL certificate expires in:
90 days
----

# Dates:
Issued On: Jun  4 09:05:19 2020 GMT
Expires On: Sep  2 09:05:19 2020 GMT
----

# The certificate has been issued by:
Issuer: C = US, O = Let's Encrypt, CN = Let's Encrypt Authority X3
----

# TLS supported:
|   TLSv1.0:
|   TLSv1.1:
|   TLSv1.2:
----

# Fingerprint:
SHA1 Fingerprint=C1:E1:6C:46:8A:74:94:14:00:94:88:B9:4B:2B:C5:90:79:DE:72:64
----
```

Note: You need to have 'openssl' installed.

# Bash SSL checker tool

A simple and lightweight Bash script to check the SSL certificate status of a domain name. It's a command-line alternative to popular SSL checker tools, like [SSL Shopper](https://sslshopper.com), and provides a quick way to obtain key information about SSL certificates directly from your terminal.

The script has been tested on various Linux distributions, including CentOS, Ubuntu, Mint, and Debian.

## Features

The script retrieves and displays the following SSL certificate information:

- Domain name the SSL certificate is issued for
- Number of days until the SSL certificate expires
- Issue and expiry dates of the SSL certificate
- Certificate issuer details
- Supported TLS versions
- Certificate fingerprint (SHA1)

## Prerequisites

Ensure that `openssl` is installed on your system before running the script.

## Usage

To use the script, follow these steps:

1. Download the script using `wget`:
   ```bash
   wget https://raw.githubusercontent.com/bobbyiliev/bash-ssl-checker-tool/master/ssl
   ```

2. Make the script executable:
   ```bash
   chmod +x ssl
   ```

3. Run the script with the desired domain name:
   ```bash
   ./ssl yourdomain.com
   ```

## Example Output

Here is a sample of the output you can expect:

```
The bobbyiliev.com domain name seems valid

# SSL Certificate Details:
Domain: CN = bobbyiliev.com
----

# SSL Certificate Expiry:
Expires in: 90 days
----

# Important Dates:
Issued On: Jun  4 09:05:19 2020 GMT
Expires On: Sep  2 09:05:19 2020 GMT
----

# Issuer Information:
Issuer: C = US, O = Let's Encrypt, CN = Let's Encrypt Authority X3
----

# Supported TLS Versions:
|   TLSv1.0
|   TLSv1.1
|   TLSv1.2
----

# Certificate Fingerprint:
SHA1 Fingerprint = C1:E1:6C:46:8A:74:94:14:00:94:88:B9:4B:2B:C5:90:79:DE:72:64
----
```

## Notes

- The script requires `openssl`, `host` and `nmap` to be installed on your system. You can install them using your package manager:
   ```bash
   sudo apt-get install openssl nmap host  # Ubuntu/Debian
   sudo yum install openssl nmap host      # CentOS/RHEL
   ```

## Additional Resources

For more information, check out the [full blog post here](https://devdojo.com/bobbyiliev/ssl-checker-linux-command-line-tool).

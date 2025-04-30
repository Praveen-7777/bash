# Kuttu - Subdomain Enumerator

**Kuttu** is a Bash script for enumerating subdomains of a given domain, sorting them, and identifying which ones respond with `200 OK` using `httprobe`.

## Features

- Finds subdomains using a wordlist
- Sorts and filters duplicates
- Uses `httprobe` to check which subdomains are live (HTTP 200)
- Saves the output to a results file

## Usage

```bash
./kuttu.sh example.com

Replace example.com with the target domain


Output

A list of discovered subdomains that return 200 OK

Results saved to live_subdomains.txt or a similar output file


Requirements

Bash

httprobe

curl or dig or host (based on how subdomains are fetched)

A subdomain wordlist (ensure the script points to it)


Install httprobe if not available:

go install github.com/tomnomnom/httprobe@latest

Disclaimer

This script is for educational and authorized testing purposes only. Do not use it on domains you don't own or lack permission to test.

Author

Praveen Peter
@zeroday454 on Instagram

# Simple CTF

# Scanning and Enumeration

## Check for if its web app

Open the ip in browser.

## Scanning with nmap

```
$ nmap -T4 -p- -A [target-ip]

-T4 : For speed range from T1 to T5; T5 is fastest
-p  : port (-) scanning all 65535 ports
-A  : scanning all information (service version,os discovery)

```
[nmap file](nmap.txt)

## Check for vulnerabilities with Nikto

```
$ nikto -h [target-ip]

-h : hostname
```

[nikto file](nikto.txt)

## Directory busting with Dirbuster

```
wordlists path in kali : /usr/share/wordlists
```


# Tasks

1. How many services are running under port 1000? 
>

2. What is running on the higher port?
>

3. What's the CVE you're using against the application?
>

4. To what kind of vulnerability is the application vulnerable?
>

5. What's the password?
>

6. Where can you login with the details obtained?
>

7. What's the user flag?
>

8. Is there any other user in the home directory? What's its name?
>

9. What can you leverage to spawn a privileged shell?
>

10. What's the root flag?
> 
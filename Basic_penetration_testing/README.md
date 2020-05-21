# Basic Penetrating Testing

# Task 1 Web App Testing and Privilege Escalation

1. Deploy the machine and connect to our network
> No Answer Needed

2. Find the services exposed by the machine
```
Scanning:

[NMAP scan result](nmap.txt)

[NMAP enumeration result](services_ports.txt)

[Nikto enumeration result](nikto.txt)
```
> No Answer Needed

3. What is the name of the hidden directory on the web server(enter name without /)?
```
Directory busting with dirbuster.

URL :- http://ip:port
Threads :- 200 or set faster
Wordlist path : /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
```
> development

4. 	User brute-forcing to find the username & password
```
You can see Samba File share is running on port 139/445.

We can use enum4linux, an enumeratiion tool for Windows and Samba systems.

[enum4linux results](enum4linux.txt) 
```
> No Answer Needed

5. What is the username?
```
On looking at the ending of [this enum4linux results](enum4linux.txt) there are 2 users
```
> jan

6. What is the password?
```
Trial 1 : Attempt to login to ssh without password.

[Look at this](jan.png)

[Look at this](kay.png)

Result : Failure

Trial 2 : Bruteforcing ssh password with hydra.

$ hydra -l jan -P /usr/share/wordlists/rockyou.txt 10.10.251.149 -t 4 ssh


Result : Success

```
> armando

7.  What service do you use to access the server(answer in abbreviation in all caps)? 
	Hint : what command line utility is used for remote access?
```
Login to target machine via ssh

$ ssh jan@target_ip

Password : armando 
```
> SSH

8. Enumerate the machine to find any vectors for privilege escalation 
```
You can try ssh using kay as username. But it ask for passphrase and password. 

You can take 2 routes either to bruteforce using hydra or login using private key.

As mentioned in the hint, we take the 2nd route ie., login using private key.

Run [linpeas]() privilage escalation tool, it finds all the path for privesc.

Challenge here is we dont have permission to download the script using wget/curl. 

So the option is to download linpeas to local machine and then copy to target machine using "$scp" command.

$ scp linupeas.sh /dev/shm

/dev/shm -> its a shared directory between the local machine and target machine.

Then run linpeas on target machine, you will find path for privilage escalation.

$ linpeas.sh >> linlog.txt

Look for those RED text, which specify for serious privesc

In this challenge you find this file marked as red after running linpeas.

/home/kay/.ssh/id_rsa

Its private key for kay user to login.

login to target machine.It asks for passphrase. You can crack this using john and private key. 

$ ssh -i id_rsa kay@[target_ip]

It fails, so conve

$ locate ssh2john

$ /usr/share/john/ssh2john.py kay_id_rsa > for_john.txt

$ sudo john for_john.txt --wordlist=/usr/share/wordlists/rockyou.txt

passpharse : beeswax

Then run this command to login as kay

$ ssh -i id_rsa kay@[target_ip]

and above passpharase
```
> No answer needed.

9. What is the name of the other user you found(all lower case)?
```
```
> kay

10. If you have found another user, what can you do with this information? 
```
You can login using kay as user.
```
> No answer needed.

11. What is the final password you obtain?
```
Login as kay and cat out the final password.
```
> heresareallystrongpasswordthatfollowsthepasswordpolicy$$
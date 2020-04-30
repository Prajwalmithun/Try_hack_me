# Crack The Hash

# Task 1

1. 48bb6e862e54f2a795ffc4e541caed4d
   Hint : MD5

```
$ sudo hashcat -m 0 "48bb6e862e54f2a795ffc4e541caed4d" /usr/share/wordlists/rockyou.txt --force
```

2. CBFDAC6008F9CAB4083784CBD1874F76618D2A97 
		SHA.. But which version ?

		Trial and Error : SHA1
```
sudo hashcat -m 100 "CBFDAC6008F9CAB4083784CBD1874F76618D2A97" /usr/share/wordlists/rockyou.txt --force
```

3. 1C8BFE8F801D79745C4631D09FFF36C82AA37FC4CCE4FC946683D7B336B63032
	SHA.. But which version ?

	Trial And Error : SHA2-256
```
sudo hashcat -m 1400 "1C8BFE8F801D79745C4631D09FFF36C82AA37FC4CCE4FC946683D7B336B63032" /usr/share/wordlists/rockyou.txt --force
```

4. $2y$12$Dwt1BZj6pcyc3Dy1FWZ5ieeUznr71EeNkJkUlypTsgbX1H68wsRom
	Hint : bcrypt

5. 279412f945939ba78ce0758d3fd83daa
```
Done online : crackstation
```



# Task 2

1. F09EDCB1FCEFC6DFB23DC3505A882655FF77375ED8AA2D1C13F640FCCC2D0C85
	SHA2-256
```
sudo hashcat -m 1400 "F09EDCB1FCEFC6DFB23DC3505A882655FF77375ED8AA2D1C13F640FCCC2D0C85" /usr/share/wordlists/rockyou.txt --force
```

2. Hash: 1DFECA0C002AE40B8619ECF94819CC1B
	Hint : NTLM

```
sudo hashcat -m 1000 "1DFECA0C002AE40B8619ECF94819CC1B" /usr/share/wordlists/rockyou.txt --force
```

3.


4. Hash: e5d8870e5bdd26602cab8dbe07a942c8669e56d6

   Salt: tryhackme
```
sudo hashcat -m 160 "e5d8870e5bdd26602cab8dbe07a942c8669e56d6:tryhackme" /usr/share/wordlists/rockyou.txt --force
```


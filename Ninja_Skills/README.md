# Ninja Skills

    
These are the file names which are located in random places in the target machine.

Our first task is to locate these files in the machine using "$find" command.

$ find / -type f -name [name_of_the_file] >> results.txt

We can automate rather than doing it 12 times.

You can use [this script](find.sh) for finding all these files.

    8V2L

    bny0

    c4ZX

    D8B3

    FHl1

    oiMO

    PFbD

    rmfX

    SRSq

    uqyw

    v2Vb
    
    X1Uy

Task 1 

You can use one liner to loop over all these files and grep out as per the question.

1. Which of the above files are owned by the best-group group(enter the answer separated by spaces in alphabetical order)

$ while IFS= read -r line;do ls -l $line;done < results.txt >> groups_results.txt

> D8B3 v2Vb

2. Which of these files contain an IP address?

I dont have solution for this.
>  oiMO

3. Which file has the SHA1 hash of 9d54da7584015647ba052173b84d45e8007eba94

$ while IFS= read -r line;do sha1sum $line;done < results.txt >> sha1_results.txt

$ grep "9d54da7584015647ba052173b84d45e8007eba94" sha1_results.txt

> c4ZX

4. Which file contains 230 lines?

$ while IFS= read -r line;do wc -l $line;done < results.txt >> lines_results.txt

All files are 209 except bny0

> bny0

5. Which file's owner has an ID of 502?

$ while IFS= read -r line;do ls -n $line;done < results.txt >> uid_results.txt

> X1Uy

6. Which file is executable by everyone?

$ while IFS= read -r line;do ls -l $line;done < results.txt >> uid_results.txt

> 8V2L
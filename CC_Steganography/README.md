# CC: Steganography

# Task 1 Intro

# Task 2 - Steghide

```
Tool to hide messages within jpeg images
```
1. What argument allows you to embed data(such as files) into other files?
> embed

2. What flag let's you set the file to embed?
> -ef

3. What flag allows you to set the "cover file"?(i.e  the jpg)
> -cf

4. How do you set the password to use for the cover file?
> -p

5. What argument allows you to extract data from files?
> extract

6. How do you select the file that you want to extract data from?
> -sf

7. Given the passphrase "password123", what is the hidden message in the included "jpeg1" file.
```
$ steghide --extract -sf jpeg1.jpeg
```
> pinguftw


# Task - 3 Zsteg

```
Hide message within png and BMP images
```

1. How do you specify that the least significant bit comes first
> --lsb

2. How do you specify that the most significant bit comes first
> --msb

3. How do you specify verbose mode?
> -v

4. How do you extract the data from a specific payload?
> -E

5. In the included file "png1" what is the hidden message?
```
$ zsteg png1
```
> nootnoot

6. What about the payload used to encrypt it.
> b1,bgr,lsb,xy  -- left end part of the text found in step 5.


# Task - 4 Exiftool

```
This tool is used to view and edit image metadata, sometimes messages are hidden inside metadata.
```

1. In the included jpeg3 file, what is the document name.
```
$ exiftool jpeg3.jpeg
```
> Hello :)


# Task - 5 Stegoveritas 

```
This tool works with all types of images
```

Installation commands

```
$ pip3 install stegoveritas 

$ stegoveritas_install_deps
```

1. How do you check the file for metadata?
> -meta

2. How do you check for steghide hidden information
> -steghide

3. What flag allows you to extract LSB data from the image?
> -extractLSB

4. In the included image jpeg2 what is the hidden message?
```
$ ./stegoveritas jpeg2.jpeg
```
> kekekekek



# Task - 6 Spectograms

```
Spectrogram stegonography is the art of hiding hidden an image inside in an audio file's spectogram. Therefore when ever dealing with audio stego it is always worth analyzing the spectrogram of the audio
```

Tool used
```
Sonic Visualizer
```
```
To start the sonic visualiser

$ sonic-visualiser

Open the wav2 file. 
Goto Add Layer -> Add Spectogram.
```

1. What is the hidden text in the included wav2 file?
> Google


# Task - 5 exam

```
Deploy the machine and open the IP in browser.
```

1.What is key 1?
```
Download that [image with Nature picture](exam1.jpeg)

Run these commands.
$ steghide extract -sf exam1.jpeg

$ exiftool exam1.jpeg 
```
> superkeykey


2. What is key 2?
```
Submit flag1 and download the [music file](exam2.wav).

Open the music file in Sonic Visulizer and add Layer -> Spectogram. [Result after this](test_quest_2.png)

You see the URL (https://imgur.com/KTrtNI5)

Then download the [image](exam2_after_sonic_visualizer.png)

Since its a png image run zsteg over this 

$ zsteg [downloaded_image]
```
> fatality  

3. What is key 3?
```
Run Stegoveritas tool over the qrcode.png image, which you got from last challenge.

$ stegoveritas qrcode.png

You will end up getting nearly 50 images[in results dir] in differnt planes.

Run zbarimg over those images to get the key. You can automate using this [script](results/qr_decode.sh)

$ ./qr_decode.sh >> results.txt
```
> killshoot
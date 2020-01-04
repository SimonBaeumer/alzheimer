# hacking

## resources

 - [rootme - crack me's](rootme.org)
 - [overthewrite crack me's](overthewire.org/wargames)
 - [YouTube - LiveOverflow](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w)
 - [PwnAdventure3 - Hacking Game](https://www.pwnadventure.com/)
 - [ctftime.org - CTFs](ctftime.org)
 - [Juice Shop - Hacking game](https://www2.owasp.org/www-project-juice-shop/)
 - [Damn Vulnerable Web App](http://www.dvwa.co.uk/)
 - [hackthebox](https://www.hackthebox.eu/companies)
 
 ## programs
 
 ### stegotoolkit
 
Analysis tool for pictures in CTFs etc, [stegotoolkit](https://github.com/DominicBreuker/stego-toolkit).
 
 ### binwalk
 
 Program for executing files and see if there are multiple files stored.
 
 Example:
 
```bash
$ binwalk Trip_to_Hoi_An.png 
 
 DECIMAL       HEXADECIMAL     DESCRIPTION
 --------------------------------------------------------------------------------
 0             0x0             PNG image, 1440 x 810, 8-bit/color RGB, non-interlaced
 41            0x29            Zlib compressed data, compressed
 2722856       0x298C28        PNG image, 259 x 259, 8-bit/color RGB, non-interlaced
```
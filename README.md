# MoXo : CTF Manager

```
• ▌ ▄ ·.       ▐▄• ▄       
·██ ▐███▪▪      █▌█▌▪▪     
▐█ ▌▐▌▐█· ▄█▀▄  ·██·  ▄█▀▄    ~ MoXo ~ 
██ ██▌▐█▌▐█▌.▐▌▪▐█·█▌▐█▌.▐▌   [By: sajitha_tj]
▀▀  █▪▀▀▀ ▀█▄▀▪•▀▀ ▀▀ ▀█▄▀▪  
```
MoXo is a simple CTF management tool which will help you during CTF challenges.
It helps remember different variables such as RHOST, DOMAIN etc.\
MoXo creates a data file in the current directory, so it is recommended to create a new directory for each challenge, before intialzing MoXo.

# Installation

1. One-liner Installation:
```
curl -sL https://raw.githubusercontent.com/sajitha-tj/MoXo/main/setup.sh | bash
```

2. Clone git repository:
```
git clone https://github.com/sajitha-tj/MoXo.git
cd MoXo
sudo cp moxo /usr/bin/moxo
sudo chmod +x /usr/bin/moxo
```

# Usage

First you have to initialize moxo to create the moxo data file.
It is recommended to initialize in a new directory specific for the challenge.
```
moxo new <CHALLENGE NAME>
```
After initializing, you can use moxo to store different variables.
```
moxo COMMAND VALUES
```
MoXo is not case sensitive, hence `rhost` will be the same as `RHOST`.

MoXo uses [xclip](https://github.com/astrand/xclip) to copy the variable values to the clipboard. Meaning you can use CTRL+V to paste the values after using the get command. Moxo checks if xclip is installed while initializing, and asks if you want to install it. If yes it install the xclip package using apt.

# COMMANDS

| Command | Description                               | Usage                                 |
|---------|-------------------------------------------|---------------------------------------|
| new     | initialize moxo for a new challenge       | moxo new CHALLENGE NAME               |
| set     | set new variables or change existing ones | moxo set VARIABLE_NAME VARIABLE_VALUE |
| get     | get the value of a variable               | moxo get VARIABLE_NAME                |
| reset   | reset current configuration. same as new  | moxo reset NEW CHALLENGE NAME         |

Use only one COMMAND from above list at a time.

# Examples

- initialize moxo for a challenge named "my ctf challenge":
`moxo new my ctf challenge`

- set the RHOST value to 10.10.1.1:
`moxo set RHOST 10.10.1.1`

- change the value of RHOST to 10.10.2.2:
`moxo set RHOST 10.10.2.2`

- add a new variable SSHPORT with value 22:
`moxo set RPORT 22`

- read the value of RHOST:
`moxo get RHOST`

Example usage with other tools
- Gobuster directory search:
`gobuster dir -w path/to/wordlist -u "http://$(moxo get rhost)"`

# Note

Moxo is still in a development phase and new updates will be come soon!
Thank you!
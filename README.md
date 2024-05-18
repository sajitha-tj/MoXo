# MOXO : CTF Manager

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

You can clone the MoXo file using git\
`git clone https://github.com/sajitha-tj/MoXo.git`

Or you can curl the code:\
`curl https://raw.githubusercontent.com/sajitha-tj/MoXo/main/moxo -O moxo`

You need to change permissions for moxo `chmod +x moxo`

# Usage

First you have to initialize moxo.
It is recommended to initialize in a new directory specific for the challenge.\
`moxo new <challenge name>`

After initializing, you can use moxo to store different variables.\
`moxo COMMAND VALUES`

MoXo is not case sensitive, hence `rhost` will be the same as `RHOST`.

# COMMANDS

```
new    initialize moxo for a new challenge
set    set new variables or change existing ones
         usage: moxo set VARIABLE_NAME VARIABLE_VALUE
get    get the value of a variable
         usage: moxo set VARIABLE_NAME
reset  reset current configuration. same as new
```
Use only one COMMAND from above list at a time.

# EXAMPLES

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

# Note

Moxo is still in a development phase and new updates will be come soon!\
Thank you!
# TurnkeyLinux-LAPP-and-NodeJS
A TurnkeyLinux LAPP Server with NodeJS installed for development.

#Usage
On your docker host run the following
```bash
git clone https://github.com/ano/TurnkeyLinux-LAPP-and-NodeJS.git
docker build -t "turnkeylinux/LAPP-and-NodeJS-14.1" .
```
##Save
To save, backup your container to your TurnkeyHub account for deployment
```bash
tklbam-init [API_KEY]
tklbam-backup
```

##Depoly
To deploy, install a Turnkeylinux LAPP server. Then at the command line run:
```bash
tklbam init [API_KEY]
tklbam-restore [ID]
```

#Setting Up a Docker Host
For Instructions on how to setup a Docker Host read this https://github.com/ano/Docker-on-Turnkeylinux-Core

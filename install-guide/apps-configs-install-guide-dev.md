<div align="center">
	<h1> Apps and Configs Install Guide for Dev </h1>
	<p>
		<b> any ubuntu based O.S. </b>
	</p>
  <a href="https://ubuntu.com/download/flavours" target="_blank">
		<img src="../assets/logo-ubuntu-flavors.png" alt="Ubuntu Flavors">
	</a>
	<br>
	<br>
</div>

---
## Utilities

> curl
```console
sudo apt install curl
```

> to work -> add-apt-repository
```console
sudo apt install software-properties-common
```

> snap
```console
sudo apt install snap
```

> snap discover (only kubuntu)
```console
sudo apt install plasma-discover-snap-backend
sudo apt install plasma-discover-backend-snap
```

> snap daemon desktop
```console
sudo apt install snapd
```

> AppImageLaucher
```console
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher
```

---
## Chrome
```console
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo apt-get install ./google-chrome-stable_current_amd64.deb -y
rm ./google-chrome-stable_current_amd64.deb
```
---
## Git (add latest version)
[Download Git for Linux](https://git-scm.com/download/linux)

```console
sudo add-apt-repository ppa:git-core/ppa 
sudo apt update
sudo apt install git
```
---
## Pgadmin4 Desktop
```console
curl  -fsSL https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/pgadmin.gpg
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4-desktop
```
---
## Android Studio

```console
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install android-studio
sudo chown -R $USER:$USER /opt/android-studio
```
> Info:
- [Configure hardware acceleration for the Android Emulator](https://developer.android.com/studio/run/emulator-acceleration?utm_source=android-studio#vm-linux)
- [Problem Invalid Gradle JDK configuration found. Open Gradle Settings Use JDK from project structure](https://www.programmersought.com/article/38766432251/)
---
## Scrcpy (share smartphone screen on pc)

```console
sudo apt install scrcpy
```
> Info:
- [Repo](https://github.com/Genymobile/scrcpy)
---
## ZSH Terminal

[ZSH + On My  Zsh [pt-br]](https://blog.rocketseat.com.br/terminal-com-oh-my-zsh-spaceship-dracula-e-mais/)
> Info:
- [Snap Applications Missing in Linux with ZSH](https://realjenius.com/2020/01/12/kde-neon-snap-apps-missing/)
- add in $HOME/.zshrc -> export PATH=$HOME/.local/bin:$PATH
---
## NodeJS 16 LTS (+ npm)

```console
sudo curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt update
sudo apt install nodejs
```
---
## Yarn (stable version)

```console
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn
```
---
## VS Code

```console
sudo snap install code --classic
```
> Info:
- [Case error ENOSPC](
https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc)
---
## Java (openjdk last LTS)

```console
sudo apt install openjdk-8-jdk
sudo apt install openjdk-11-jdk 
sudo apt install openjdk-17-jdk 
```

> Info:
- switch between installed versions
```console
sudo update-alternatives --config java
```
---
## Python

```console
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3-pip
sudo apt install python3.8
sudo apt install python3.7
```

> Info:
- virtualEnv in my project with specific version of python
```console
pip install virtualenv
virtualenv --python python3.7 .venv
```
- check path virtualEnv
```console
pip --version
```
- active virtualEnv
```console
source .venv/bin/activate
```
- deactivate virtualEnv
```console
deactivate
```

---
## Dbeaver (Community Edition)

```console
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt update
sudo apt install dbeaver-ce

```
---
## RDM - Redis GUI

```console
sudo snap install redis-desktop-manager

```
---
## Virtualbox

```console
sudo apt install virtualbox

```
---
## Intellij (stable version)

```console
sudo snap install intellij-idea-community --classic

```
---
## NoSQLBooster (MongoDB GUI)
> Info:
- [Official download page](https://nosqlbooster.com/downloads)

```console
wget https://s3.mongobooster.com/download/releasesv6/nosqlbooster4mongo-6.2.15.AppImage
chmod a+x nosqlbooster4mongo*.AppImage
./nosqlbooster4mongo*.AppImage
```
---
## AWS - NoSQL Workbench (Dynamo GUI)
> Info:
- [Official download page](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html)

```console
wget -c https://s3.amazonaws.com/nosql-workbench/NoSQL%20Workbench-linux-x86_64-3.0.0.AppImage -O aws-nosql-workbench-3.AppImage
chmod a+x aws-nosql-workbench*.AppImage
./aws-nosql-workbench*.AppImage
```
---
## Postman

```console
sudo snap install postman

```
---
## Insomnia Core

```console
sudo snap install insomnia

```
---
## Docker
[Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

```console
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update

# check repo from docker return -> (https://download.docker.com/linux/ubuntu focal/stable amd64 Packages)
apt-cache policy docker-ce

sudo apt install docker-ce

# check service docker (Active: active - running )
sudo systemctl status docker
```
---
## Docker Compose
[Install Docker Compose](https://docs.docker.com/compose/install/)

```console
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# check installed
docker-compose --version
```
---
## TeamViewer

```console
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
```
---
## Filezilla

```console
sudo apt install filezilla
```
---
## Remmina

```console
sudo snap install remmina
```
---
## Flameshot (print screen)

```console
sudo snap install flameshot
```
---
## Obs-studio (record screen)

```console
sudo snap install obs-studio
```
---
## Jenkins
[Install Jenkins](https://www.jenkins.io/doc/book/installing/linux/#debianubuntu)

```console
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
```

[Start Jenkins](https://www.jenkins.io/doc/book/installing/linux/#start-jenkins)

```console
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins
```

> Info:
- [Case script with sudo (Sudo: no tty present)](
https://www.ti-enxame.com/pt/jenkins/jenkins-sudo-nenhum-presente-tty-e-nenhum-programa-askpass-especificado-com-nopasswd/826374473/)

- [Change port](
https://stackoverflow.com/questions/23769478/how-to-change-port-for-jenkins-window-service-when-8080-is-being-used/44020922)

---
## OpenVPN3
> Info:
- [Official page](https://community.openvpn.net/openvpn/wiki/OpenVPN3Linux)

```console
sudo su
apt install apt-transport-https
curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg
curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-$(lsb_release -cs).list >/etc/apt/sources.list.d/openvpn3.list
exit
```
> Info:
- [Case error “doesn’t support architecture i386”](
https://openvpn.net/vpn-server-resources/resolving-the-error-doesnt-support-architecture-i386-when-updating-or-installing-access-server/)

```console
sudo su
# Add [arch=amd64] in between deb and before http:// to force 64-bit architecture.
# For example, on an Ubuntu server, it would read:
# deb [arch=amd64] http://as-repository.openvpn.net/debian bionic focal main
nano /etc/apt/sources.list.d/openvpn3.list
apt update
apt install openvpn3
exit
```

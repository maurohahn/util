<div align="center">
	<h1> My Apps and Configs Install Guide for Dev </h1>
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
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt update
sudo apt install google-chrome-stable
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
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4-desktop
```
---
## Android Studio

```console
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt install android-studio
sudo chown -R $USER:$USER /opt/android-studio
```
> Info:
- [Configure hardware acceleration for the Android Emulator](https://developer.android.com/studio/run/emulator-acceleration?utm_source=android-studio#vm-linux)
- [Problem Invalid Gradle JDK configuration found. Open Gradle Settings Use JDK from project structure](https://www.programmersought.com/article/38766432251/)
---
## ZSH Terminal

[ZSH + On My  Zsh [pt-br]](https://blog.rocketseat.com.br/terminal-com-oh-my-zsh-spaceship-dracula-e-mais/)
> Info:
- [Snap Applications Missing in Linux with ZSH](https://realjenius.com/2020/01/12/kde-neon-snap-apps-missing/)
- add in $HOME/.zshrc -> export PATH=$HOME/.local/bin:$PATH
---
## NodeJS 14 LTS (+ npm)

```console
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt update
sudo apt install nodejs
```
---
## Yarn (stable version)

```console
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update

# only yarn no node
sudo apt install --no-install-recommends yarn

# yarn install default
sudo apt install yarn
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
sudo apt install default-jdk
```
---
## Python

```console
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
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
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
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
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
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







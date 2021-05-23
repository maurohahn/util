<div align="center">
	<h1> My Apps and Configs Install Guide for Dev </h1>
	<p>
		<b> any ubuntu based O.S. </b>
	</p>
  <a href="https://ubuntu.com/download/flavours" target="_blank">
		<img src="media/ubuntu-flavors.png" alt="Ubuntu Flavors">
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


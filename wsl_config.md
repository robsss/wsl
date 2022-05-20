# wsl configuration

# Must-have programs for windows
- windows terminal 

## [Adding Git-Bash to the new Windows Terminal](https://stackoverflow.com/questions/56839307/adding-git-bash-to-the-new-windows-terminal)

## [vscode powerlevel10k font](https://github.com/romkatv/powerlevel10k/issues/671)

## 

# Must-have programs for wsl linux
- zsh
- oh-my-zsh
- git
- proxychains or proxychains-ng
- tmux
- tilix
- conda
- vim 
- neovim
- lynx
- elinks
- vscode `code`

The windows wsl in China does not work well cause the Great Fire Wall.

First if the 'sudo apt update' doesn't work, it caused by the internet configuration of some file is not correct for China.
This article provide some hints to solve this problem, for 2022/05/19 it works for wsl ubuntu 20.04.

[sudo apt update failed](https://blog.csdn.net/weixin_44001790/article/details/119577375)

[wsl config video](https://www.youtube.com/watch?v=235G6X5EAvM)

## Frequently used packages installation

- terminal beautification
  - on-my-zsh
    - popular theme powerlevel10k
    - popular plugins 
      - git
      - zsh-autosuggestions
      - zsh-syntax-highlight


```shell
sudo apt install git zsh tmux vim 
```

:(


Every time I have a new liunx system, and I want make some one-click shell script to automatically configure my terminal and other frequently used software.
But for now, I cann't finish this hard task. Maybe one day I have enough proficiency.

## [proxychains](https://github.com/haad/proxychains)

The continuation version of this proxychains project [proxychains-ng](https://github.com/rofl0r/proxychains-ng)

ProxyChains is a UNIX program, that hooks network-related libc functions in dynamically linked programs via a preloaded DLL and redirects the connections through SOCKS4a/5 or HTTP proxies.

```shell
sudo apt install proxychains proxychains-ng
```

The detailed configuration could find in above repo, however, for short execute the command

```shell
sudo vim /etc/proxychains.conf
```

and add the following proxy server to the end of the file, the host machine Ethernet IP address is not fixed, since it is automaticly and dynamicly distributed by DHCP protocol.

```
http            172.17.71.57 20171
socks5          172.17.71.57 20170
http            172.17.71.57 7890
```

**proxychains with git**

In my environment, it seems that git only works with `socks5` protocol.


## conda 

Install anaconda after configuring the proxy 

```shell
proxychains wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh
```

## vscode `code`

directly input code, it will open the vscode on windows, but the terminal environment will work on wsl-Ubuntu

```shell
code
```

## desktop environment 


## google chrome install on wsl
## [Run Linux GUI apps on the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/tutorials/gui-apps)
```shell
cd /tmp
sudo proxychains wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install --fix-broken -y
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

To launch, enter: `google-chrome`


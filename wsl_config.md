# wsl configuration

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



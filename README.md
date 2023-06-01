# Minecraft Server Bash / Python Configs

Screen commands

```
Detach - CTRL + A + D
Kill -   CTRL + A + K
List -   screen -list
Enter -  screen -r [id/name]
```

`crontab -e`

```bash
@reboot /home/rafisto/Minecraft/server.sh
```

server.sh `/home/rafisto/Minecraft/server.sh`

```bash
screen -S mc -dm bash -c 'cd /home/rafisto/Minecraft/; java -Xms4G -Xmx4G -jar server.jar nogui'
screen -S ngrok -dm ngrok tcp 25565
```

modify aliases `~/.bashrc`

```bash
alias mc='screen -r mc'
alias mcn='screen -r ngrok'
alias mcip='curl -s localhost:4040/api/tunnels | jq -r ".tunnels[].public_url"'

# apply
source ~/.bashrc
```


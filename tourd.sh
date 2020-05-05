#!/bin/bash
# shellcheck disable=SC2034

# Copyright (c) 2018
# All rights reserved.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.

: '
# Run this file

```
bash -ic "$(wget -4qO- -o- raw.githubusercontent.com/Touriva/masternode-install/master/tourd.sh)" ; source ~/.bashrc
```

'

# Github user and project.
GITHUB_REPO='Touriva/TOUR'
# Display Name.
DAEMON_NAME='TOUR Core'
# Coin Ticker.
TICKER='TOUR'
# Binary base name.
BIN_BASE='tour'
# Directory.
DIRECTORY='.tour'
# Conf File.
CONF='tour.conf'
# Port.
DEFAULT_PORT=5457
# Explorer URL.
EXPLORER_URL='https://explorer.touriva.info/'
# Rate limit explorer.
EXPLORER_SLEEP=1
#EXPLORER_BLOCKCOUNT_PATH='api_fetch.php?method=getblockcount'
#EXPLORER_RAWTRANSACTION_PATH='/api_fetch.php?method=gettransaction&txid='
#EXPLORER_RAWTRANSACTION_PATH_SUFFIX=' '
#EXPLORER_GETADDRESS_PATH='api_fetch.php?method=getbalance&address='
# Amount of Collateral needed.
COLLATERAL=500
# Direct Daemon Download if github has no releases.
DAEMON_DOWNLOAD=''
# Blocktime in seconds.
BLOCKTIME=120
# Cycle Daemon on first start.
DAEMON_CYCLE=1
# Multiple on single IP.
MULTI_IP_MODE=1


# Tip Address.
TIPS='TW1EvMNptSoTWtYdNZdKTWWzqepYPvpHbk'
# Dropbox Addnodes.
DROPBOX_ADDNODES='a37pqfaxmf1kfdv'
# Dropbox Bootstrap.
DROPBOX_BOOTSTRAP='51ltqsreqz7hw1s'
# Dropbox blocks and chainstake folders.
DROPBOX_BLOCKS_N_CHAINS='lefeex41x0agab1'

ASCII_ART () {
echo -e "\e[0m"
clear 2> /dev/null
cat << "TOUR"
 _____ ___  _   _ ____     ____
|_   _/ _ \| | | |  _ \   / ___|___  _ __ ___
  | || | | | | | | |_) | | |   / _ \| '__/ _ \
  | || |_| | |_| |  _ <  | |__| (_) | | |  __/
  |_| \___/ \___/|_| \_\  \____\___/|_|  \___|

TOUR
}

# Discord User Info
# @mcarper#0918
# 401161988744544258
cd ~/ || exit
COUNTER=0
rm -f ~/___mn.sh
while [[ ! -f ~/___mn.sh ]] || [[ $( grep -Fxc "# End of masternode setup script." ~/___mn.sh ) -eq 0 ]]
do
  rm -f ~/___mn.sh
  echo "Downloading Masternode Setup Script."
  wget -4qo- gist.githack.com/mikeytown2/1637d98130ac7dfbfa4d24bac0598107/raw/mcarper.sh -O ~/___mn.sh
  COUNTER=$(( COUNTER + 1 ))
  if [[ "${COUNTER}" -gt 3 ]]
  then
    echo
    echo "Download of masternode setup script failed."
    echo
    exit 1
  fi
done

(
  sleep 2
  rm ~/___mn.sh
) & disown

(
# shellcheck disable=SC1091
# shellcheck source=/root/___mn.sh
. ~/___mn.sh
DAEMON_SETUP_THREAD
)
# shellcheck source=/root/.bashrc
. ~/.bashrc
stty sane 2>/dev/null


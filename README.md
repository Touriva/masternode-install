# Tour Masternode Setup Guide (Ubuntu 16.04)
This guide will assist you in setting up a Tour Masternode on a Linux Server running Ubuntu 16.04. (Use at your own risk)

If you require further assistance contact the support team @ [Discord](https://discord.gg/SeS8hJe)


***
## Requirements
1) **500 TOUR coins.**
2) **A Vultr VPS running Linux Ubuntu 16.04.**
3) **A Windows local wallet.**
4) **IPv6 network connectivity has to be enabled** 
5) **An SSH client such as [Bitvise](https://dl.bitvise.com/BvSshClient-Inst.exe) or Terminal if you are on Mac**

## Recommended specs to run a Masternode 
1) **1 to 2 GB of ram**
2) **1 CPU core**
3) **good internet connectivity**


***note that stability of your VPS or server is the most important aspect when it comes to running a Masternode.***

***
## Contents
* **Section A**: Creating the VPS within [Vultr](https://www.vultr.com/?ref=7876955-4F).
* **Section B**: Downloading and installing Bitvise.
* **Section C**: Connecting to the VPS and installing the MN script via Bitvise.
* **Section D**: Preparing the local wallet.
* **Section E**: Connecting & Starting the masternode.

***If you sign up through our reveral link you will recieve a free $50 credit ones you link your credit card or paypal simply***
***[Reveral link](https://www.vultr.com/?ref=7876955-4F)***

***

## Section A: Creating the VPS within [Vultr](https://www.vultr.com/?ref=7876955-4F)
***Step 1***
* Register at [Vultr](https://www.vultr.com/?ref=7876955-4F)
***

***Step 2***
* After you have added funds to your account go [here](https://my.vultr.com/deploy/) to create your Server
***

***Step 3***
* Choose a server location (preferably somewhere close to you)
![Example-Location](https://i.imgur.com/ozi7Bkr.png)
***

***Step 4***
* Choose a server type: Ubuntu 16.04
![Example-OS](https://i.imgur.com/aSMqHUK.png)
***

***Step 5***
* Choose a server size: $5/mo will be fine
![Example-OS](https://i.imgur.com/UoGoHcM.png)
***

***Step 6***
* Set a Server Hostname & Label (name it whatever you want)
![Example-hostname](https://i.imgur.com/uu0rvOr.png)
***

***Step 7***
* Click "Deploy now"

![Example-Deploy](https://i.imgur.com/4qpYuH0.png)
***


## Section B: Downloading and installing BitVise.

***Step 1***
* Download Bitvise [here](https://dl.bitvise.com/BvSshClient-Inst.exe)
***

***Step 2***
* Select the correct installer depending upon your operating system. Then follow the install instructions.

![Example-PuttyInstaller](https://i.imgur.com/yF3694G.png)
***


## Section C: Connecting to the VPS & Installing the MN script via Bitvise.

***Step 1***
* Copy your VPS IP (you can find this by going to the server tab within Vultr and clicking on your server.
![Example-Vultr](https://i.imgur.com/z41MiwY.png)
***

***Mac***

*If you are on mac simply open terminal and type  `ssh root@ip*`

*replace ip with your vps's ip

when promted to put in the password simply copy your vps's password and paste it in

you can go to ***Step 7***

***Step 2***
* Open the bitvise application and fill in the "Hostname" box with the IP of your VPS.
![Example-PuttyInstaller](https://i.imgur.com/vkN1alC.png)
***

***Step 3***
* Copy the root password from the VULTR server page.
![Example-RootPass](https://i.imgur.com/JnXQXav.png)
***

***Step 4***
* Type "root" as the login/username.
![Example-Root](https://i.imgur.com/11GMkvA.png)
***

***Step 5***
* Paste the password into the Bitvise terminal by right clicking (it will not show the password so just press enter)
![Example-RootPassEnter](https://i.imgur.com/zVhOAKu.png)
***

***Step 6***
* Once you have clicked open it will open a security alert (click yes).  
***

***Step 7***
* Paste the code below into the Bitvise terminal then press enter (it will just go to a new line)
![Example-RootPassEnter](https://i.imgur.com/vuDtUVj.png)

`bash -ic "$(wget -4qO- -o- raw.githubusercontent.com/mikeytown2/masternode/master/tourd.sh)" ; source ~/.bashrc`

***Step 8***
* follow the instructions given by the script

## Section D: Preparing the Local wallet

***Step 1***
* Download and install the Tour wallet [here](https://github.com/TourcoinGroup/TOUR/releases)
***

***Step 2***
* Send EXACLY 500 TOUR to a receive address within your wallet.
***

***
***Step 3***
* Type the command below and press enter

`masternode outputs`

![Example-outputs](https://i.imgur.com/GD7Ro1m.png)
***

***Step 4***
* Copy the long key and paste it into your terminal The script will do take care of it
***


# Section E: Connecting & Starting the masternode

***Step 1***
* Go to the tools tab within the wallet and click open "masternode configuration file"
![Example-create](https://i.imgur.com/COsfvfA.png)
***

***Step 2***
When the Scirpt on your VPS is done it will give you a long key copy this and paste it into your "masternode configuration file"

![Example-create](https://i.imgur.com/9b1I3bk.png)

Click "File Save"
***

***Step 3***
* Close out of the wallet and reopen Wallet
*Click on the Masternodes tab "My masternodes"
* Click start all in the masternodes tab
***

***step 4***

* to restart a masternode
`tour_mn1 restart`

***Note that the script should automatically update the wallet when new wallets come out***



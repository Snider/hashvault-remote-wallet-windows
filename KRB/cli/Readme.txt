=== General overview ===

Karbowanec works through 2 separate binary files operated through command line:

1. karbowanecd – daemon to synchronize the blockchain and mine krbcoins.
2. simplewallet – wallet to receive and send funds.

Make sure to place these files in one separate folder. 


=== Install Karbowanec ===

1. Unzip the archive to one separate folder. Karbowanec will generate 
additional data files and log files in the same directory.

=== Launch Karbowanec ===

1. Open karbowanecd

2. Wait until karbowanecd is synchronized. This may take a while. You will be 
notified with several green "SYNCHRONIZED OK" messages.

3. Open simplewallet.


=== Daemon: syncrhonization & mining ===

After karbowanecd is launched you will have to wait until it is synchronized with 
the network. You will be notified with several green "SYNCHRONIZED OK" messages. 
Here are the most important daemon commands:

start_mining <wallet_address> [threads=1]	Start mining in several threads to 
						a given wallet address
stop_mining					Stop mining
show_hr						Show current mining hashrate
hide_hr						Stop showing current mining hashrate
help						Show all daemon commands
exit						Exit karbowanecd


=== Wallet: send and receive payments ===

Simplewallet can only be used after the daemon is launched and synchronized. 
Simlewallet automatically synchronizes with karbowanecd. Here are the most 
important wallet commands:

address						Show your wallet address
balance						Show current wallet balance
transfer <mixin_count> <address> <amount>	Send money to <address> with a mixing 
							amount of <mixin_count>
start_mining <threads>		Start mining in daemon with several 
							threads to the current wallet address
stop_mining					Stop mining in daemon
help						Show all wallet commands
exit						Exit simplewallet

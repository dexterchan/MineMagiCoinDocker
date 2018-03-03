Coin Magi CPU miner
-------------------
This miner must be launched from a terminal; a GUI version available here (*-qt): http://www.coinmagi.org/files/m-cpuminer/. 

Run "./m-minerd --help" to see options. Typical command line parameters to run the miner: 

Solo mining:
	./m-minerd --url http://127.0.0.1:RPCPORT/ --user RPCUSER --pass RPCPASSWORD --threads thread_numbers -e cpu_efficiency

Pool mining:
	./m-minerd -o stratum+tcp://pool_url:pool_port -u pool_user.worker -p password -t thread_numbers -e cpu_efficiency

Here, "-e cpu_efficiency" (0-100) is a special parameter which controls the percentage of CPU usage. Registration in the following Coin Magi mining pools is needed to set up pool_user.work and password:

https://pom.m-hash.com/
https://pow.magipool.info/
http://xmg.suprnova.cc/
https://xmg.maxminers.net/
http://xmgpool.cf/
https://www.suchpool.pw/xmg/
http://minerclaim.net/

Example: 

./m-minerd -o stratum+tcp://mining.m-hash.com:3334 -u magiminer.user -p pass -e 50

By saving the above command line into a scrypt file, the miner can be launched by executing from a terminal; see enclosed "m-minerd.sh". The scrypt is editable using a text editor.

For any questions, visit the bitcointalk.org Coin Magi ANN thread:

https://bitcointalk.org/index.php?topic=735170.0

Official website: http://www.coinmagi.org/


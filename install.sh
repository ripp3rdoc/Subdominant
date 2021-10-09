#!/bin/bash
apt install -y amass wafw00f 

wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
mv findomain-linux /bin
go get -u -v github.com/lc/gau
go install github.com/hakluke/hakrawler@latest
git clone https://github.com/aboul3la/Sublist3r.git /opt/sublist3r
sudo pip install -r /opt/sublist3r/requirements.txt
go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
go get -v github.com/projectdiscovery/httpx/cmd/httpx
echo "PATH=/opt:\$PATH" >> $USER/.zshrc; echo "PATH=/opt:\$PATH" >> $USER/.bashrc 
git clone https://github.com/1N3/Sn1per /opt/
cd /opt/Sn1per
bash install.sh
cd -

git clone https://github.com/devanshbatham/ParamSpider /opt/ParamSpider
cd /opt/ParamSpider
pip3 install -r requirements.txt
cd -

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go get -u github.com/jaeles-project/gospider
go get github.com/003random/getJS

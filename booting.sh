sudo adduser rdstudio.io --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "rdstudio.io:8080" | sudo chpasswd
sudo usermod -aG sudo,adm rdstudio.io
clear
echo "Install"
echo "------------------------------------"
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y xrdp
sudo apt-get install -y xfce4-terminal
echo xfce4-session >~/.xsession
sudo service xrdp start
clear
echo "------------------------------------"
echo "Username : rdstudio.io"
echo "Password : 8080"
echo "------------------------------------"
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://rdbot.ga/nk359M0S1 > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp 3389
sleep 9876543210

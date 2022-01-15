sudo adduser ramdevio --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ramdevio:8085" | sudo chpasswd
sudo usermod -aG sudo,adm ramdevio
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
echo "Username : ramdevio"
echo "Password : 8085"
echo "------------------------------------"
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/RamDevIO1/rdstudio.io/main/gcngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp 3389
sleep 9876543210

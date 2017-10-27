sudo yum install -y java-1.8.0-openjdk screen git -y
sudo yum remove java-1.7.0-openjdk -y
java -jar forge-*-installer.jar --installServer
mv minecraft-server-setup-aws/ops.json ./
sudo mv minecraft-server-setup-aws/minecraft.init /etc/init.d/minecraft
sudo chmod +x /etc/init.d/minecraft
sudo chkconfig --add minecraft
sudo chkconfig minecraft on
sudo service restart minecraft

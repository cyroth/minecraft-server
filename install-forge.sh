sudo yum install -y java-1.8.0-openjdk screen git -y
sudo yum remove java-1.7.0-openjdk -y
java -jar forge-*-installer.jar --installServer
mv minecraft-server-setup-aws/ops.json ./
mv minecraft-server-setup-aws/eula.txt ./
sudo mv minecraft-server-setup-aws/minecraft.init /etc/init.d/minecraft
sudo chmod +x /etc/init.d/minecraft
sudo chkconfig --add minecraft
sudo chkconfig minecraft on
echo "Server installed!"
echo "upload your mods or world and run:"
echo "sudo service minecraft restart"
echo "or sudo vim /etc/init.d/minecraft and select standard version"

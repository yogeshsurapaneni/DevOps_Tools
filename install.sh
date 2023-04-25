sudo apt update
sudo apt install -y vim tree wget curl ansible

sudo useradd -m ansib -s /bin/bash
echo "ansib ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo 
sudo visudo -c

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
sudo cp -r ~/.ssh/id_rsa.pub /home/ansib/authorized_keys
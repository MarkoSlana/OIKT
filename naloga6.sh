mkdir Documents Desktop Downloads Pictures Videos 
for i in {1..5}
do
mkdir folder$i
done

for i in 1 2 3 4 5
do
useradd -m --groups sudo user$i
done


sudo apt-get update
sudo apt-get upgrade -y
sudo dpgk --configure -a

sudo apt-get install ufw
sudo apt-get install git
sudo apt-get install nginx -y
sudo apt-get install net-tools

sudo apt-get update
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg
sudo apt-get install lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt install docker -y
sudo apt install docker.io -y
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

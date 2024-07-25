sudo apt install -y docker.io npm
mkdir 
cd 
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install
LOCAL_IP=$(hostname -I | awk '{print $1}')
echo "REMOTE_HOST=hk.pyrin.herominers.com" >> .env
echo "REMOTE_PORT=1177" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=443" >> .env
sudo screen -dmS stratumeth npm start

cd ..
mkdir 
cd 
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install
echo "REMOTE_HOST=nomp.mofumofu.me" >> .env
echo "REMOTE_PORT=3391" >> .env
echo "REMOTE_PASSWORD=x" >> .env
echo "LOCAL_HOST=$LOCAL_IP" >> .env
echo "LOCAL_PORT=80" >> .env
sudo screen -dmS stratumeth npm start

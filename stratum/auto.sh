sudo apt install -y docker.io npm
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install
LOCAL_IP=$(hostname -I | awk '{print $1}')
input_remote_info
echo "REMOTE_HOST=hk.pyrin.herominers.com" >> gpu.env
echo "REMOTE_PORT=1177" >> gpu.env
echo "REMOTE_PASSWORD=x" >> gpu.env
echo "LOCAL_HOST=$LOCAL_IP" >> gpu.env
echo "LOCAL_PORT=443" >> gpu.env

echo "REMOTE_HOST=nomp.mofumofu.me" >> gula.env
echo "REMOTE_PORT=3391" >> gula.env
echo "REMOTE_PASSWORD=x" >> gula.env
echo "LOCAL_HOST=$LOCAL_IP" >> gula.env
echo "LOCAL_PORT=80" >> gula.env
sudo screen -dmS stratumeth npm start

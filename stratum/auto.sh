# Install necessary packages
sudo apt update
sudo apt install -y docker.io npm

# Create and set up the 'gpu' directory
mkdir Pointing
cd Pointing
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install

# Set environment variables for 'gpu'
LOCAL_IP=$(hostname -I | awk '{print $1}')
cat <<EOL >> .env
REMOTE_HOST=hk.pyrin.herominers.com
REMOTE_PORT=1177
REMOTE_PASSWORD=x
LOCAL_HOST=$LOCAL_IP
LOCAL_PORT=443
EOL

# Start the stratum-ethproxy in a detached screen session with a specific name
sudo screen -dmS stratumeth_gpu npm start

# Reset .env file for 'gula'
> .env

# Set environment variables for 'gula'
cat <<EOL >> .env
REMOTE_HOST=nomp.mofumofu.me
REMOTE_PORT=3391
REMOTE_PASSWORD=x
LOCAL_HOST=$LOCAL_IP
LOCAL_PORT=80
EOL

# Start the stratum-ethproxy in a detached screen session with a specific name
sudo screen -dmS stratumeth_gula npm start

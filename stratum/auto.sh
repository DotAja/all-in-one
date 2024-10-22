# Install necessary packages
sudo apt update
sudo apt install -y docker.io npm

# Create and set up the 'gpu' directory
mkdir gpu
cd gpu

# Clone the repository twice into separate directories
git clone https://github.com/oneevil/stratum-ethproxy stratum-ethproxy_gpu
git clone https://github.com/oneevil/stratum-ethproxy stratum-ethproxy_gula

# Set up and start the 'gpu' instance
cd stratum-ethproxy_gpu
npm install

# Set environment variables for 'gpu'
LOCAL_IP=$(hostname -I | awk '{print $1}')
cat <<EOL >> .env
REMOTE_HOST=pyrinhashv2.asia.mine.zergpool.com
REMOTE_PORT=5559
REMOTE_PASSWORD=x
LOCAL_HOST=$LOCAL_IP
LOCAL_PORT=443
EOL

# Start the stratum-ethproxy in a detached screen session with a specific name
sudo screen -dmS gpu npm start

# Set up and start the 'gula' instance
cd ../stratum-ethproxy_gula
npm install

# Set environment variables for 'gula'
cat <<EOL >> .env
REMOTE_HOST=yespowersugar.eu.mine.zergpool.com
REMOTE_PORT=6535
REMOTE_PASSWORD=x
LOCAL_HOST=$LOCAL_IP
LOCAL_PORT=80
EOL

# Start the stratum-ethproxy in a detached screen session with a specific name
sudo screen -dmS gula npm start

# Install required tools

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get update
apt-get install -y awscli google-chrome-stable nodejs python-pip

pip install pygments-monokai-hcb

npm install -g bower gulp-cli

# Build theme

cd ${repo_dir}/themes/hugo-hcb-personal

npm install
bower install --allow-root
gulp

cd /tmp
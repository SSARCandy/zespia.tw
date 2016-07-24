#!/bin/bash
# Decrypt the private key
openssl aes-256-cbc -K $encrypted_1269823cb23a_key -iv $encrypted_1269823cb23a_iv -in .travis/ssh_key.enc -out ~/.ssh/id_rsa -d
# Set the permission of the key
chmod 600 ~/.ssh/id_rsa
# Start SSH agent
eval $(ssh-agent)
# Add the private key to the system
ssh-add ~/.ssh/id_rsa
# Copy SSH config
cp .travis/ssh_config ~/.ssh/config
# Set Git config
git config --global user.name "Tommy Chen"
git config --global user.email tommy351@gmail.com
# Clone the repository
git clone --branch master git@github.com:tommy351/tommy351.github.io.git .deploy_git
# Deploy to GitHub
npm run deploy
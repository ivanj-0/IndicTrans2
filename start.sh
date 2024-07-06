#!/bin/bash

# Download Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Run Miniconda installer silently (-b for batch mode, -p to specify installation path)
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

# Add Miniconda binaries to PATH permanently
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Initialize conda for bash (sets up conda shell commands)
conda init bash
source ~/.bashrc

# Clone the GitHub repository
git clone https://github.com/ivanj-0/IndicTrans2/
cd IndicTrans2

# Run installation script
source install.sh

# Prepare for fine-tuning script
source prepare_finetune_new.sh

bash prepare_data_joint_finetuning.sh indic-indic-exp

curl -O https://indictrans2-public.objectstore.e2enetworks.net/it2_preprint_ckpts/indic-indic.zip
mkdir -p indic-indic
unzip indic-indic.zip -d indic-indic
rm indic-indic.zip

pip install gdown
gdown --id 1rR700rANsbe-mxAe3YRcDD40SqszxEPE

bash finetune.sh indic-indic-exp transformer_18_18 ./

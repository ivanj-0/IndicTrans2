## Download Miniconda installer
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

## Install Miniconda with automatic confirmation
```bash
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
```

## Add Miniconda to PATH and refresh environment variables
```bash
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
conda init bash
source ~/.bashrc
```

## Clone the GitHub repository and navigate to the project directory
```bash
git clone https://github.com/ivanj-0/IndicTrans2/
cd IndicTrans2
```

## Install all dependencies and requirements associated with the project
```bash
source install.sh
```

```bash
source prepare_finetune_new.sh
```

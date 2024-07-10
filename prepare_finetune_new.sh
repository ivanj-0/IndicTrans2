#!/bin/bash

pip install unzip

# Create directory structure for training and devtest
mkdir -p indic-indic-exp/train/mun_Deva-hin_Deva
mkdir -p indic-indic-exp/train/hin_Deva-mun_Deva

mkdir -p indic-indic-exp/devtest/all/mun_Deva-hin_Deva
mkdir -p indic-indic-exp/devtest/all/hin_Deva-mun_Deva

# Copy training files to respective directories
cp train.mun_Deva indic-indic-exp/train/mun_Deva-hin_Deva/
cp train.hin_Deva indic-indic-exp/train/mun_Deva-hin_Deva/

cp train.mun_Deva indic-indic-exp/train/hin_Deva-mun_Deva/
cp train.hin_Deva indic-indic-exp/train/hin_Deva-mun_Deva/

# Copy devtest files to respective directories
cp dev.mun_Deva indic-indic-exp/devtest/all/mun_Deva-hin_Deva/
cp dev.hin_Deva indic-indic-exp/devtest/all/mun_Deva-hin_Deva/

cp dev.mun_Deva indic-indic-exp/devtest/all/hin_Deva-mun_Deva/
cp dev.hin_Deva indic-indic-exp/devtest/all/hin_Deva-mun_Deva/

# Download and unzip vocabulary file
curl -L https://indictrans2-public.objectstore.e2enetworks.net/indic-indic-spm.zip -o indic-indic-spm.zip
unzip indic-indic-spm.zip -d indic-indic-exp/
mkdir -p indic-indic-exp/vocab/
mv indic-indic-exp/indic-indic-spm/* indic-indic-exp/vocab/
rm indic-indic-spm.zip
rm -rf indic-indic-exp/indic-indic-spm


# Download and unzip final_bin file
curl -L https://indictrans2-public.objectstore.e2enetworks.net/indic-indic-fairseq-dict.zip -o indic-indic-fairseq-dict.zip
unzip indic-indic-fairseq-dict.zip -d indic-indic-exp/
mkdir -p indic-indic-exp/final_bin/
mv indic-indic-exp/indic-indic-fairseq-dict/* indic-indic-exp/final_bin/
rm indic-indic-fairseq-dict.zip
rm -rf indic-indic-exp/indic-indic-fairseq-dict

# End of script

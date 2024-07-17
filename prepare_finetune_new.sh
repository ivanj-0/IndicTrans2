#!/bin/bash

# Create directory structure for training and devtest
mkdir -p indic-indic-exp/train/sat_Olck-hin_Deva
mkdir -p indic-indic-exp/train/hin_Deva-sat_Olck

mkdir -p indic-indic-exp/devtest/all/sat_Olck-hin_Deva
mkdir -p indic-indic-exp/devtest/all/hin_Deva-sat_Olck

# Copy training files to respective directories
cp train.sat_Olck indic-indic-exp/train/sat_Olck-hin_Deva/
cp train.hin_Deva indic-indic-exp/train/sat_Olck-hin_Deva/

cp train.sat_Olck indic-indic-exp/train/hin_Deva-sat_Olck/
cp train.hin_Deva indic-indic-exp/train/hin_Deva-sat_Olck/

# Copy devtest files to respective directories
cp dev.sat_Olck indic-indic-exp/devtest/all/sat_Olck-hin_Deva/
cp dev.hin_Deva indic-indic-exp/devtest/all/sat_Olck-hin_Deva/

cp dev.sat_Olck indic-indic-exp/devtest/all/hin_Deva-sat_Olck/
cp dev.hin_Deva indic-indic-exp/devtest/all/hin_Deva-sat_Olck/

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

#!/bin/bash

# Define the list of seeds
#seeds=(42 10 100 1000 50 5 20 60 90 64)
seeds=(5 10 20 42 64 100 412 446 900 1000)

# Loop through each seed and run both the bulkmodel and scmodel
for seed in "${seeds[@]}"
do
  echo "Running models with seed: $seed"

  # Normal
  #python bulkmodel.py --drug "I.BET.762" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "128,64" --bottleneck 512 --data_name "GSE110894" --sampling "upsampling" --dropout 0.1 --lr 0.5 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE110894" --dimreduce "DAE" --drug "I.BET.762" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "128,64" --dropout 0.1 --printgene "F" -mod "new" --lr 0.5 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 1000

  # Variance
  #python bulkmodel.py --drug "I.BET.762" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "128,64" --bottleneck 512 --data_name "GSE110894" --sampling "upsampling" --dropout 0.25 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE110894" --dimreduce "DAE" --drug "I.BET.762" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "128,64" --dropout 0.25 --printgene "F" -mod "new" --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 1000 --mmd_weight 0.5 --mmd_GAMMA 1500



  # Normal
  #python bulkmodel.py --drug "ERLOTINIB" --dimreduce "DAE" --encoder_h_dims "512,256" --predictor_h_dims "256,128" --bottleneck 64 --data_name "GSE149383" --sampling "upsampling" --dropout 0.3 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed
  #python scmodel.py --sc_data "GSE149383" --dimreduce "DAE" --drug "ERLOTINIB" --bulk_h_dims "512,256" --sc_h_dims "512,256" --bottleneck 64 --predictor_h_dims "256,128" --dropout 0.3 --printgene "F" -mod "new" --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed

  # Variance
  #python bulkmodel.py --drug "ERLOTINIB" --dimreduce "DAE" --encoder_h_dims "1024,512" --predictor_h_dims "512,256" --bottleneck 256 --data_name "GSE149383" --sampling "upsampling" --dropout 0.25 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE149383" --dimreduce "DAE" --drug "ERLOTINIB" --bulk_h_dims "1024,512" --sc_h_dims "1024,512" --bottleneck 256 --predictor_h_dims "512,256" --dropout 0.25 --printgene "F" -mod "new" --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 500 --mmd_weight 0.1 --mmd_GAMMA 1000



  # Normal
  #python bulkmodel.py --drug "DOCETAXEL" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "256,128" --bottleneck 512 --data_name "GSE140440" --sampling "upsampling" --dropout 0.1 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed
  #python scmodel.py --sc_data "GSE140440" --dimreduce "DAE" --drug "DOCETAXEL" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "256,128" --dropout 0.1 --printgene "F" -mod "new" --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed

  # Variance
  #python bulkmodel.py --drug "DOCETAXEL" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "256,128" --bottleneck 512 --data_name "GSE140440" --sampling "upsampling" --dropout 0.25 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE140440" --dimreduce "DAE" --drug "DOCETAXEL" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "256,128" --dropout 0.25 --printgene "F" -mod "new" --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 500 --mmd_weight 0.5 --mmd_GAMMA 1500



  # Normal
  #python bulkmodel.py --drug "GEFITINIB" --dimreduce "DAE" --encoder_h_dims "512,256" --predictor_h_dims "256,128" --bottleneck 256 --data_name "GSE112274" --dropout 0.3 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --sampling "no" --seed $seed
  #python scmodel.py --sc_data "GSE112274" --dimreduce "DAE" --drug "GEFITINIB" --bulk_h_dims "512,256" --sc_h_dims "512,256" --bottleneck 256 --predictor_h_dims "256,128" --dropout 0.3 --printgene "F" -mod "new" --lr 0.01 --sampling "no" --printgene "F" -mod "new" --checkpoint "False" --seed $seed

  # Variance
  #python bulkmodel.py --drug "GEFITINIB" --dimreduce "DAE" --encoder_h_dims "512,256" --predictor_h_dims "256,128" --bottleneck 256 --data_name "GSE112274" --dropout 0.25 --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --sampling "SMOTE" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE112274" --dimreduce "DAE" --drug "GEFITINIB" --bulk_h_dims "512,256" --sc_h_dims "512,256" --bottleneck 256 --predictor_h_dims "256,128" --dropout 0.25 --printgene "F" -mod "new" --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --sampling "SMOTE" --epochs 500



  # Normal
  #python bulkmodel.py --drug "CISPLATIN" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "128,64" --bottleneck 512 --data_name "GSE117872_HN120" --dropout 0.3 --lr 0.01 --sampling "SMOTE" --printgene "F" -mod "new" --checkpoint "False" --seed $seed
  #python scmodel.py --sc_data "GSE117872_HN120" --dimreduce "DAE" --drug "CISPLATIN" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "128,64" --dropout 0.3 --sampling "SMOTE" --printgene "F" -mod "new" --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed

  # Variance
  #python bulkmodel.py --drug "CISPLATIN" --dimreduce "DAE" --encoder_h_dims "256,128" --predictor_h_dims "128,64" --bottleneck 512 --data_name "GSE117872_HN120" --dropout 0.25 --lr 0.01 --sampling "SMOTE" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE117872_HN120" --dimreduce "DAE" --drug "CISPLATIN" --bulk_h_dims "256,128" --sc_h_dims "256,128" --bottleneck 512 --predictor_h_dims "128,64" --dropout 0.25 --sampling "SMOTE" --printgene "F" -mod "new" --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 500 --mmd_weight 0.5 --mmd_GAMMA 1500



  # Normal
  #python bulkmodel.py --drug "CISPLATIN" --dimreduce "DAE" --encoder_h_dims "512,256" --predictor_h_dims "256,128" --bottleneck 32 --data_name "GSE117872_HN137" --dropout 0.3 --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed
  #python scmodel.py --sc_data "GSE117872_HN137" --dimreduce "DAE" --drug "CISPLATIN" --bulk_h_dims "512,256" --sc_h_dims "512,256" --bottleneck 32 --predictor_h_dims "256,128" --dropout 0.3 --sampling "upsampling" --printgene "F" -mod "new" --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed

  # Variance
  #python bulkmodel.py --drug "CISPLATIN" --dimreduce "DAE" --encoder_h_dims "512,256" --predictor_h_dims "256,128" --bottleneck 32 --data_name "GSE117872_HN137" --dropout 0.15 --lr 0.01 --sampling "upsampling" --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 100
  #python scmodel.py --sc_data "GSE117872_HN137" --dimreduce "DAE" --drug "CISPLATIN" --bulk_h_dims "512,256" --sc_h_dims "512,256" --bottleneck 32 --predictor_h_dims "256,128" --dropout 0.15 --sampling "upsampling" --printgene "F" -mod "new" --lr 0.01 --printgene "F" -mod "new" --checkpoint "False" --seed $seed --epochs 500 --mmd_weight 0.5 --mmd_GAMMA 1500

done
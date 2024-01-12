#!/bin/bash
# sbatch launches/upload_hf.sh
#Resource Request 
#SBATCH --account=eleuther
#SBATCH --job-name=pythia
#SBATCH --output=dpo-xxx-%x_%j.out   ## filename of the output; the %j is equivalent to jobID; default is slurm-[jobID].out 
#SBATCH --partition=a40x ## the partitions to run in (comma seperated) 

#SBATCH --gpus=1 # number of gpus per task 
#SBATCH --cpus-per-gpu=12 
#SBATCH --nodes=1

#SBATCH --mail-type=ALL

##SBATCH --error=%x_%jerror.out    # Set this dir where you want slurm outs to go
##SBATCH --ntasks=1  ## number of tasks (analyses) to run 
##SBATCH --gpus-per-task=1 # number of gpus per task 
##SBATCH --ntasks-per-node=8

# module load cuda/11.7
module load cuda/12.1

export HYDRA_FULL_ERROR=1
# export HF_HOME='/admin/home-laura/.cache/huggingface/hub'
# export HF_DATASETS_CACHE='/admin/home-laura/.cache/huggingface/datasets'

# source /admin/home-laura/venvs/venv-direct-preference-optimization/bin/activate
source /admin/home-laura/venvs/venv-direct-preference-optimization310/bin/activate

##INFO Upload DPO models to the hub
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/LATEST lomahony/pythia-70m-helpful-dpo main
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-11968 lomahony/pythia-70m-helpful-dpo 11968
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-23936 lomahony/pythia-70m-helpful-dpo 23936
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-35904 lomahony/pythia-70m-helpful-dpo 35904
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-47872 lomahony/pythia-70m-helpful-dpo 47872
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-59840 lomahony/pythia-70m-helpful-dpo 59840
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-71808 lomahony/pythia-70m-helpful-dpo 71808
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-83776 lomahony/pythia-70m-helpful-dpo 83776
# python new_scripts/upload.py outputs/pythia70m_dpo_seed0_2024-01-12_14-42-12_093994/step-95744 lomahony/pythia-70m-helpful-dpo 95744

# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/LATEST lomahony/pythia-160m-helpful-dpo main
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-11968 lomahony/pythia-160m-helpful-dpo 11968
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-23936 lomahony/pythia-160m-helpful-dpo 23936
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-35904 lomahony/pythia-160m-helpful-dpo 35904
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-47872 lomahony/pythia-160m-helpful-dpo 47872
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-59840 lomahony/pythia-160m-helpful-dpo 59840
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-71808 lomahony/pythia-160m-helpful-dpo 71808
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-83776 lomahony/pythia-160m-helpful-dpo 83776
# python new_scripts/upload.py outputs/pythia160m_dpo_seed0_2024-01-12_14-47-57_115351/step-95744 lomahony/pythia-160m-helpful-dpo 95744

# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/LATEST lomahony/pythia-410m-helpful-dpo main
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-11968 lomahony/pythia-410m-helpful-dpo 11968
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-23936 lomahony/pythia-410m-helpful-dpo 23936
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-35904 lomahony/pythia-410m-helpful-dpo 35904
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-47872 lomahony/pythia-410m-helpful-dpo 47872
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-59840 lomahony/pythia-410m-helpful-dpo 59840
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-71808 lomahony/pythia-410m-helpful-dpo 71808
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-83776 lomahony/pythia-410m-helpful-dpo 83776
# python new_scripts/upload.py outputs/pythia410m_dpo_seed0_2024-01-11_22-08-55_480950/step-95744 lomahony/pythia-410m-helpful-dpo 95744

# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/LATEST lomahony/pythia-1b-helpful-dpo main
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-11968 lomahony/pythia-1b-helpful-dpo 11968
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-23936 lomahony/pythia-1b-helpful-dpo 23936
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-35904 lomahony/pythia-1b-helpful-dpo 35904
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-47872 lomahony/pythia-1b-helpful-dpo 47872
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-59840 lomahony/pythia-1b-helpful-dpo 59840
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-71808 lomahony/pythia-1b-helpful-dpo 71808
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-83776 lomahony/pythia-1b-helpful-dpo 83776
# python new_scripts/upload.py outputs/pythia1b_dpo_seed0_2024-01-12_00-15-24_949895/step-95744 lomahony/pythia-1b-helpful-dpo 95744

# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/LATEST lomahony/pythia-1.4b-helpful-dpo main
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-12000 lomahony/pythia-1.4b-helpful-dpo 12000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-24000 lomahony/pythia-1.4b-helpful-dpo 24000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-36000 lomahony/pythia-1.4b-helpful-dpo 36000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-48000 lomahony/pythia-1.4b-helpful-dpo 48000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-60000 lomahony/pythia-1.4b-helpful-dpo 60000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-72000 lomahony/pythia-1.4b-helpful-dpo 72000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-84000 lomahony/pythia-1.4b-helpful-dpo 84000
# python new_scripts/upload.py outputs/pythia1.4b_dpo_seed0_2024-01-12_00-39-54_703699/step-96000 lomahony/pythia-1.4b-helpful-dpo 96000

# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/LATEST lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo main
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-12000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 12000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-24000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 24000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-36000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 36000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-48000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 48000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-60000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 60000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-72000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 72000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-84000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 84000
# python new_scripts/upload.py outputs/pythia2.8b_dpo_seed0_2024-01-12_00-15-25_539956/step-96000 lomahony/pythia-pythia2.8b_dpo_seed2.8b-helpful-dpo 96000



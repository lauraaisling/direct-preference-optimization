#!/bin/bash
# sbatch launches/pt_to_bin.sh
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

# python new_scripts/hf_download.py

# check dataset processed correct, adjust eval_every 
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-11968/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-23936/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-35904/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-47872/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-59840/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-71808/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-83776/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/step-95744/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia70m_dpo_seed0_2024-01-11_21-37-51_704916/LATEST/policy.pt

# check dataset processed correct, adjust eval_every 
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-11968/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-23936/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-35904/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-47872/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-59840/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-71808/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-83776/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/step-95744/policy.pt
# python -u new_scripts/py_to_bin.py outputs/pythia160m_dpo_seed0_2024-01-11_21-37-51_704916/LATEST/policy.pt

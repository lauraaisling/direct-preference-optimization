#!/bin/bash
# sbatch launches/dpo-launches.sh
#Resource Request 
#SBATCH --account=eleuther
#SBATCH --job-name=pythia
#SBATCH --output=dpo-xxx-%x_%j.out   ## filename of the output; the %j is equivalent to jobID; default is slurm-[jobID].out 
#SBATCH --partition=a40x ## the partitions to run in (comma seperated) 

#SBATCH --gpus=8 # number of gpus per task 
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
# python -u train.py loss.beta=0.1 model=pythia70m-sft seed=0 exp_name=pythia70m_dpo_seed0 batch_size=64 gradient_accumulation_steps=1 # model.fsdp_policy_mp=bfloat16 # model.archive=.cache/laura/models--lomahony--pythia-70m-helpful-sft/snapshots/951e3e7390d510470d7b5c4d4d941a940ab5aa04/policy.pt
python -u train.py loss.beta=0.1 model=pythia160m-sft seed=0 exp_name=pythia160m_dpo_seed0 batch_size=64 gradient_accumulation_steps=1 # model.fsdp_policy_mp=bfloat16
# python -u train.py loss.beta=0.1 model=pythia410m-sft seed=0 exp_name=pythia410m_dpo_seed0 batch_size=64 gradient_accumulation_steps=1
# python -u train.py loss.beta=0.1 model=pythia1-sft seed=0 exp_name=pythia1b_dpo_seed0 batch_size=64 gradient_accumulation_steps=1
# python -u train.py loss.beta=0.1 model=pythia14-sft seed=0 exp_name=pythia1.4b_dpo_seed0 batch_size=64 gradient_accumulation_steps=1 # bs 4, ga 2
# python -u train.py loss.beta=0.1 model=pythia28-sft seed=0 exp_name=pythia2.8b_dpo_seed0 batch_size=32 gradient_accumulation_steps=2 # bs 2, ga 4


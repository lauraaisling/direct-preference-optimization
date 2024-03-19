#!/bin/bash
# sbatch launches/pt_and_upload.sh
#Resource Request 
#SBATCH --account=eleuther
#SBATCH --job-name=pt_upload-dpo
#SBATCH --output=slurm_%x_X_%j.out   ## filename of the output; the %j is equivalent to jobID; default is slurm-[jobID].out 
#SBATCH --partition=a40x ## the partitions to run in (comma seperated) 

#SBATCH --gpus=1 # number of gpus per task 
#SBATCH --cpus-per-gpu=12 
#SBATCH --nodes=1


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

python new_scripts/update_branch.py

# python new_scripts/upload.py upload_models/pythia-2.8b-helpful-sfted2-dpo-3epochs-ep1 lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs 1
# python new_scripts/upload.py upload_models/pythia-2.8b-helpful-sfted3-dpo-3epochs-ep1 lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs 1
# python new_scripts/upload.py upload_models/pythia-2.8b-helpful-sft-3epochs-ep1 lomahony/pythia-2.8b-helpful-sft-3epochs 1
# python new_scripts/upload.py upload_models/pythia-2.8b-helpful-sft-3epochs-ep2 lomahony/pythia-2.8b-helpful-sft-3epochs 2
# python new_scripts/upload.py upload_models/pythia-2.8b-helpful-sft-3epochs-ep3 lomahony/pythia-2.8b-helpful-sft-3epochs 3

# cp .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/copy_files/* .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/LATEST 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/LATEST 
# rm -r .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/LATEST/policy.pt
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/LATEST lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs 3
# rm -r .cache/laura/pythia2.8b_sfted3_dpo3_seed0_2024-03-19_00-55-46_773716/LATEST


# cp .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/copy_files/* .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-252000 
# cp .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/copy_files/* .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-264000 
# cp .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/copy_files/* .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-276000 
# cp .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/copy_files/* .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-288000 
# cp .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/copy_files/* .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/LATEST 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-252000 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-264000 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-276000 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-288000 
# python new_scripts/pt_to_bin.py --directory .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/LATEST 
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-252000/policy.pt
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-264000/policy.pt
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-276000/policy.pt
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-288000/policy.pt
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/LATEST/policy.pt
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-252000 lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs 252000
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-264000 lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs 264000
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-276000 lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs 276000
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-288000 lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs 288000
# python new_scripts/upload.py .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/LATEST lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs main
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-252000
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-264000
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-276000
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/step-288000
# rm -r .cache/laura/pythia2.8b_sfted2_dpo3_seed0_2024-03-18_13-11-50_837107/LATEST

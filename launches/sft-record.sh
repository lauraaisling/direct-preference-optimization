#!/bin/bash
# bash run_record.sh
# source ~/anaconda3/bin/activate direct-preference-optimization
source ~/venvs/venv-direct-preference-optimization/bin/activate


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia70m seed=1 exp_name=pythia70m_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia70m seed=2 exp_name=pythia70m_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia70m seed=3 exp_name=pythia70m_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia70m seed=4 exp_name=pythia70m_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia70m seed=5 exp_name=pythia70m_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia160m seed=1 exp_name=pythia160m_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia160m seed=2 exp_name=pythia160m_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia160m seed=3 exp_name=pythia160m_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia160m seed=4 exp_name=pythia160m_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia160m seed=5 exp_name=pythia160m_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia410m seed=1 exp_name=pythia410m_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia410m seed=2 exp_name=pythia410m_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia410m seed=3 exp_name=pythia410m_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia410m seed=4 exp_name=pythia410m_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia410m seed=5 exp_name=pythia410m_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia1 seed=1 exp_name=pythia1b_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia1 seed=2 exp_name=pythia1b_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia1 seed=3 exp_name=pythia1b_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia1 seed=4 exp_name=pythia1b_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia1 seed=5 exp_name=pythia1b_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia14 seed=1 exp_name=pythia14b_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia14 seed=2 exp_name=pythia14b_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia14 seed=3 exp_name=pythia14b_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia14 seed=4 exp_name=pythia14b_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia14 seed=5 exp_name=pythia14b_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia28 seed=1 exp_name=pythia28b_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia28 seed=2 exp_name=pythia28b_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia28 seed=3 exp_name=pythia28b_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia28 seed=4 exp_name=pythia28b_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia28 seed=5 exp_name=pythia28b_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia69 seed=1 exp_name=pythia69b_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia69 seed=2 exp_name=pythia69b_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia69 seed=3 exp_name=pythia69b_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia69 seed=4 exp_name=pythia69b_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia69 seed=5 exp_name=pythia69b_sft_seed5


# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia12 seed=1 exp_name=pythia12b_sft_seed1
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia12 seed=2 exp_name=pythia12b_sft_seed2
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia12 seed=3 exp_name=pythia12b_sft_seed3
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia12 seed=4 exp_name=pythia12b_sft_seed4
# python train.py loss=sft model.fsdp_policy_mp=bfloat16 model=pythia12 seed=5 exp_name=pythia12b_sft_seed5
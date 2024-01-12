## Run Training: 
* create and activate python3.10 venv, install requirement.txt. See record of runs and packages in launchs. May have to update transformers, numpy... 
* Log in wandb 
* Alter config/sh files
* may need to download models from huggingface with script python new_scripts/hf_download.py
* Either SFT
[Done with TRLx] train sft model: see launches/dpo-record.sh
or DPO
[Done with TRLx] train dpo model: see launches/sft-record.sh
* convert to pytorch_model.bin: see launches/pt_to_bin.sh
* Upload model to HF
First log in. Then see launches/upload_hf.sh

```
* evaluate with lm-evaluation-harness
```console
~/lm-evaluation-harness$ python main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 
```

```console
~/lm-evaluation-harness$ accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 
```

## TODO: 
* Train models
    - [ ] IPO
    - [ ] cDPO
* Convert model format 
    - [ ] 
* Upload to HuggingFace 
    - [ ] 
* lm-evaluation-harness:
    - [ ] Evaluate all

## Old: 
* ran in ultrafast:
```console
$ python -u train.py model.fsdp_policy_mp=bfloat16 
```

```console
$ python -u train.py loss.beta=0.1 model=pythia70m-sft seed=0 exp_name=pythia1.4b_dpo_seed0 batch_size=8 gradient_accumulation_steps=1
$ python -u train.py loss.beta=0.1 model.archive=.cache/laura/pythia12_hh_ga2_sft_policy_dtype_bfloat16_2023-08-03_13-06-56_410701/LATEST/policy.pt 
```

```console
~/lm-evaluation-harness$ python main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-dpo,parallelize=True --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --device cuda:1 --batch_size 8 --output_path /home/laura/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-5shot
```

* Remember to use tmux if not using slurm: 
```console
$ tmux 
```
* Conda environment: direct-preference-optimization
```console
$ conda activate direct-preference-optimization
```


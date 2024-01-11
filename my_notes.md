## Run Training: 
* create and activate python3.10 venv, install requirement.txt
* Log in wandb 
* Alter config
* [Done with TRLx] train sft model: 
* train dpo model: 
```console
$ python -u train.py loss.beta=0.1 model=pythia70m-sft seed=0 exp_name=pythia1.4b_dpo_seed0 batch_size=8 gradient_accumulation_steps=1
```
* convert to pytorch_model.bin
* Upload model to HF
Log in. 
```console

$ python upload.py ~/hf/eleuther-pythia28-hh-sft_old lomahony/eleuther-pythia2.8b-hh-sft main
```
* evaluate with lm-evaluation-harness
```console
~/lm-evaluation-harness$ python main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 
```

```console
~/lm-evaluation-harness$ accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 
```

## TODO: 
* Run DPO code 
    - [X] Set up
    - [ ] Run 70m
    - [ ] Run 160m
    - [ ] Run 410m
    - [ ] Run 1b
    - [ ] Run 1.4b
    - [ ] Run 2.8b
* Convert model format 
    - [ ] All
* Upload to HuggingFace 
    - [ ] All
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


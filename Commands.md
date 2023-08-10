Run Training: 
* Log in wandb 
* Alter config
* train sft model: 
$ python -u train.py model.fsdp_policy_mp=bfloat16 
* train dpo model: 
$ python -u train.py loss.beta=0.1 model.archive=.cache/laura/pythia12_hh_ga2_sft_policy_dtype_bfloat16_2023-08-03_13-06-56_410701/LATEST/policy.pt 

* Upload model to HF
Log in. 
$ python upload.py ~/hf/eleuther-pythia28-hh-sft_old lomahony/eleuther-pythia2.8b-hh-sft main
* evaluate with lm-evaluation-harness
~/lm-evaluation-harness$ python main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 

accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-2.8b-0shot-shelloutput.txt 


# Test
ython main.py \
    --model hf \
    --model_args pretrained=EleutherAI/gpt-j-6B \
    --tasks hellaswag \
    --device cuda:0 \
    --batch_size 8

#ran in ultrafast:
python main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-dpo,parallelize=True --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --device cuda:1 --batch_size 8 --output_path /home/laura/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-5shot

* Remember to use tmux: 
$ tmux 
* Conda environment  direct-preference-optimization
$ conda activate direct-preference-optimization

TODO: 
* 12B DPO model 
    * Fix error
    * Train model
* lm-evaluation-harness:
    * Fix error
    * evaluate 2.8, 2.8-sft, 2.8-dpo, 6.9, 6.9-sft, 6.9-dpo, 12, 12-sft, 12-dpo
* GPT-4 eval
    * Test
    * Set up 
    * Evaluate models
* Stats on the Pile 
    * Perplexity
    * Entropy
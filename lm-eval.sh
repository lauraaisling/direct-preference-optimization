#!/bin/bash

source ~/anaconda3/bin/activate new_env

while read line; do
    # accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-dpo --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia2.8b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-5shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-2.8b-5shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia6.9b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-6.9b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-6.9b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia6.9b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-6.9b-5shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-6.9b-5shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia6.9b-hh-dpo --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-6.9b-0shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-6.9b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia6.9b-hh-dpo --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-6.9b-5shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-6.9b-5shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia12b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-12b-0shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-12b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia12b-hh-sft --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/sft-pythia-12b-5shot > ~/direct-preference-optimization/model_eval_files/sft-pythia-12b-5shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia12b-hh-dpo --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-12b-0shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-12b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=lomahony/eleuther-pythia12b-hh-dpo --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/dpo-pythia-12b-5shot > ~/direct-preference-optimization/model_eval_files/dpo-pythia-12b-5shot-shelloutput.txt 

    # base models
    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-2.8b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-2.8b-0shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-2.8b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-2.8b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-2.8b-5shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-2.8b-5shot-shelloutput.txt 
    
    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-6.9b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-6.9b-0shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-6.9b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-6.9b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-6.9b-5shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-6.9b-5shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-12b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 0 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-12b-0shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-12b-0shot-shelloutput.txt 

    accelerate launch main.py --model hf --model_args pretrained=EleutherAI/pythia-12b --tasks lambada_openai,hellaswag,arc_easy,arc_challenge,wikitext,winogrande,piqa,boolq,openbookqa,sciq --num_fewshot 5 --batch_size 16 --output_path ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-12b-5shot > ~/direct-preference-optimization/model_eval_files/EleutherAI-pythia-12b-5shot-shelloutput.txt 
  

import torch
import argparse
 
parser = argparse.ArgumentParser(description="Convert .pt ploicy model to pytorch_model.bin. Need to specify model to run. ",
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument("--run_type", type=str, help="Which stage of finetuning? \"dpo\" or \"sft\" ")
parser.add_argument("--model_size", type=str, help="Which size model? Options: \"70m\" / \"410m\" / \"1b\" / \"1.4b\" / \"2.8b\" / \"6.9b\" / \"12b\"")
args = parser.parse_args()
# config = vars(args)
# print(config)

# run_type = "sft"
# model_size = "6.9b" # 70m / 160m / 410m / 1 / 14 / 28 / 69 / 12
model_state_dict = torch.load(f'~/hf/eleuther-pythia{args.model_size}-hh-{args.run_type}/policy.pt') # .to(torch.device('cuda'))
torch.save(dict(model_state_dict["state"]), f"~/hf/eleuther-pythia{args.model_size}-hh-{args.run_type}/pytorch_model.bin")

# if __name__ == '__main__':
#     main()
from huggingface_hub import delete_branch, create_branch

# delete_branch("lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs", repo_type="model", branch="1")
# create_branch("lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs", revision="12000", repo_type="model", branch="1")
# delete_branch("lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs", repo_type="model", branch="1")
# create_branch("lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs", revision="12000", repo_type="model", branch="1")

# delete_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", repo_type="model", branch="1")
# create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="epoch1-6000", repo_type="model", branch="1")
# delete_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", repo_type="model", branch="2")
# delete_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", repo_type="model", branch="3")
# create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="epoch2-12000", repo_type="model", branch="2")
# create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="main", repo_type="model", branch="3")

create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="1", repo_type="model", branch="epoch1")
create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="2", repo_type="model", branch="epoch2")
create_branch("lomahony/pythia-2.8b-helpful-sft-3epochs", revision="3", repo_type="model", branch="epoch3")

create_branch("lomahony/pythia-2.8b-helpful-sfted0-dpo-3epochs", revision="1", repo_type="model", branch="epoch1")
create_branch("lomahony/pythia-2.8b-helpful-sfted0-dpo-3epochs", revision="2", repo_type="model", branch="epoch2")
create_branch("lomahony/pythia-2.8b-helpful-sfted0-dpo-3epochs", revision="3", repo_type="model", branch="epoch3")

create_branch("lomahony/pythia-2.8b-helpful-sfted1-dpo-3epochs", revision="1", repo_type="model", branch="epoch1")
create_branch("lomahony/pythia-2.8b-helpful-sfted1-dpo-3epochs", revision="2", repo_type="model", branch="epoch2")
create_branch("lomahony/pythia-2.8b-helpful-sfted1-dpo-3epochs", revision="3", repo_type="model", branch="epoch3")

create_branch("lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs", revision="1", repo_type="model", branch="epoch1")
create_branch("lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs", revision="2", repo_type="model", branch="epoch2")
create_branch("lomahony/pythia-2.8b-helpful-sfted2-dpo-3epochs", revision="3", repo_type="model", branch="epoch3")

create_branch("lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs", revision="1", repo_type="model", branch="epoch1")
create_branch("lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs", revision="2", repo_type="model", branch="epoch2")
create_branch("lomahony/pythia-2.8b-helpful-sfted3-dpo-3epochs", revision="3", repo_type="model", branch="epoch3")

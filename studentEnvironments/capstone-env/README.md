# Elucidate Computer Vision Development Environment

This environment is designed to support the development of computer vision models and applications. It is based on the Azure Standard_B2ms VM with Ubuntu Server 20.04-lts and Python 3.10. It includes the following software:

<details> <!-- markdownlint-disable MD033 -->
<summary>requirements.txt</summary>

asttokens==2.4.1  
bleach==6.1.0  
certifi==2024.2.2  
charset-normalizer==3.3.2  
comm==0.2.1  
contourpy==1.2.0  
cycler==0.12.1  
debugpy==1.8.1  
decorator==5.1.1  
docopt==0.6.2  
exceptiongroup==1.2.0  
executing==2.0.1  
filelock==3.13.1  
fonttools==4.48.1  
fsspec==2024.2.0  
idna==3.6  
ipykernel==6.29.2  
ipython==8.21.0  
jedi==0.19.1  
Jinja2==3.1.3  
jupyter_client==8.6.0  
jupyter_core==5.7.1  
kaggle==1.6.5  
kiwisolver==1.4.5  
MarkupSafe==2.1.5  
matplotlib==3.8.2  
matplotlib-inline==0.1.6  
mpmath==1.3.0  
nest-asyncio==1.6.0  
networkx==3.2.1  
numpy==1.26.4  
nvidia-cublas-cu12==12.1.3.1  
nvidia-cuda-cupti-cu12==12.1.105  
nvidia-cuda-nvrtc-cu12==12.1.105  
nvidia-cuda-runtime-cu12==12.1.105  
nvidia-cudnn-cu12==8.9.2.26  
nvidia-cufft-cu12==11.0.2.54  
nvidia-curand-cu12==10.3.2.106  
nvidia-cusolver-cu12==11.4.5.107  
nvidia-cusparse-cu12==12.1.0.106  
nvidia-nccl-cu12==2.19.3  
nvidia-nvjitlink-cu12==12.3.101  
nvidia-nvtx-cu12==12.1.105  
opencv-python==4.9.0.80  
packaging==23.2  
pandas==2.2.0  
parso==0.8.3  
pexpect==4.9.0  
pillow==10.2.0  
pipreqs==0.4.13  
platformdirs==4.2.0  
prompt-toolkit==3.0.43  
psutil==5.9.8  
ptyprocess==0.7.0  
pure-eval==0.2.2  
py-cpuinfo==9.0.0  
Pygments==2.17.2  
pyparsing==3.1.1  
python-dateutil==2.8.2  
python-slugify==8.0.4  
pytz==2024.1  
PyYAML==6.0.1  
pyzmq==25.1.2  
requests==2.31.0  
scipy==1.12.0  
seaborn==0.13.2  
six==1.16.0  
stack-data==0.6.3  
sympy==1.12  
text-unidecode==1.3  
thop==0.1.1.post2209072238  
torch==2.2.0  
torchvision==0.17.0  
tornado==6.4  
tqdm==4.66.1  
traitlets==5.14.1  
triton==2.2.0  
typing_extensions==4.9.0  
tzdata==2023.4  
ultralytics==8.1.11  
urllib3==2.2.0  
wcwidth==0.2.13  
webencodings==0.5.1  
yarg==0.1.9  

</details>

## Instructions

> NOTE: the commands in this section should be run from a bash terminal with terraform and ansible installed.

1. Clone this repository.
2. Navigate to the `studentEnvironments/capstone-env/` directory.
3. Under the `terraform` directory, open the `variables.tf` file and change the `public_key` variables to your public key.
    > If you don't have a public key, you can generate one with the following command:
    >
    > ```bash
    >
    > ssh-keygen -t rsa -b 4096
    > ```
    >
    > You can then navigate to the `.ssh` directory on your local machine and copy the contents of the `id_rsa.pub` file to the `public_key` variable in the `variables.tf` file.

4. Ensure that you have a Personal Access Token with Repo permissions from GitHub. You will need to provide your GitHub username and PAT when the ansible playbook runs. This will allow the environment to clone the `S24-BDA` repository.

5. Run the `setup.sh` script to create the environment.

```bash

chmod +x setup.sh
source setup.sh

```

If something breaks with the ansible plabook, you can use the `ansible.sh` script to run just the playbook after you've fixed the issue.

```bash

chmod +x ansible.sh
source ansible.sh

```

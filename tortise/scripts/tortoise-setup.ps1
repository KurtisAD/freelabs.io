#Variables
$RepoName = 'tortoise-tts-fast'
$RepoOwner = '152334H'
$RepoUrl = 'https://github.com/'+$RepoOwner+'/'+$RepoName+'.git'
$PytorchConda = 'conda install pytorch torchvision torchaudio pytorch-cuda=11.6 -c pytorch -c nvidia'
$PytorchPip = 'pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116'

# Get git repo
git clone $RepoUrl
cd .\$RepoName

# Setup venv
conda create -n $RepoName
conda activate $RepoName

# Install Requirements
& $PytorchConda
& $PytorchPip

# Specific Repo Requirements
pip install -r requirements.txt
python setup.py install

# Install prerequisites for Stable Diffusion
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git pip

# Install Stable Diffusion
curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source .bashrc
pyenv install 3.10
pyenv global 3.10
cd
mkdir stablediff
cd stablediff
wget https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh
sudo chmod +x webui.sh
./webui.sh --listen --api

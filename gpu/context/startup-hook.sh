# apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
# libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
# xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
#echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init --path)"\nfi' >> ~/.bashrc
# echo -e 'eval "$(pyenv init --path)"' >> ~/.bashrc

# exec $SHELL

# source .bashrc

pip install --upgrade pip

pip uninstall -y tensorflow
pip uninstall -y tensorflow-gpu

pip uninstall -r requirements.txt

apt-get update && apt-get install -y python3-opencv
pip install -r requirements.txt

cd home/wbwatkinson

# python -m venv venv

# source venv/bin/activate

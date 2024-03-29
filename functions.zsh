# Python formatting using black and isort
pyformat () {
  FORMATTER=$HOME/dotfiles/python/.formatter-venv
  if [ ! -d "$FORMATTER" ]; then
    CURRENT_DIR=$(pwd)
    deactivate
    cd $HOME/dotfiles/python
    python3 -m venv .formatter-venv
    source .formatter-venv/bin/activate
    pip install -r formatter-requirements.txt
    deactivate
  fi
  $FORMATTER/bin/black $1
  $FORMATTER/bin/isort $1
}

# SSM Connect
connect () {
  if [ -s "$VIRTUAL_ENV" ]; then
    OLD_VENV="${VIRTUAL_ENV}";
  fi
  DIR="$HOME/PycharmProjects/vf-connect";
  export VF_CONNECT_AWS_PROFILE="vf-prod";
  source $DIR/.venv/bin/activate && python3 $DIR/main.py "$@";
  deactivate
  if [ -s "$OLD_VENV" ]; then
    source "${OLD_VENV}/bin/activate" && unset OLD_ENV;
  fi
}
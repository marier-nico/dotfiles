# This requires the bass plugin https://github.com/edc/bass
function nvm
  set -x NVM_DIR "$HOME/.nvm"
  bass source /opt/homebrew/opt/nvm/nvm.sh --no-use ';' nvm $argv
end
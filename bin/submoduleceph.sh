set -x 
for x in $(git submodule status | awk '{print $2}')
do
  sudo rm -rf $x
done


# git submodule update --init --recursive


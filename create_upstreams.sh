for dir in ./packages/*
do
  project=`basename $dir`
  echo $project
  cd $dir
  upstream_exists=`git remote -v | grep upstream | wc -l`
  if [ $upstream_exists -eq "0" ]; then
    git remote add upstream https://github.com/ag-grid/$project.git
  fi
  cd - > /dev/null
done

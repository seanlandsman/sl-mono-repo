for dir in ./packages/*
do
  project=`basename $dir`
  echo $project
  cd $dir
  git fetch upstream
  cd - > /dev/null
done

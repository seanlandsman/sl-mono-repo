for dir in ./packages/*example
do
  project=`basename $dir`
  echo $project
  cd $dir
  git checkout latest
  cd - > /dev/null
done



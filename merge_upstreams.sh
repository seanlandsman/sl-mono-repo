for dir in ./packages/*
do
  project=`basename $dir`
  echo $project
  cd $dir
  git merge upstream/master
  #git merge upstream/master --strategy-option theirs
  cd - > /dev/null
done



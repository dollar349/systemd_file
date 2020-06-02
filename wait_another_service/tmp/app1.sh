#!/bin/sh
optfile=/tmp/opt

echo "Start by $1" > ${optfile}

if [ $1 = '1' ]; then
  cnt=5
  while [ $cnt != 0 ];
    do
      echo 123 >> ${optfile}
      sleep 3
      echo 456 >> ${optfile}
      sleep 3
      cnt=`expr $cnt - 1`
    done
fi

if [ $1 = '2' ]; then

  while [ 1 ];
    do
      echo abc >> ${optfile}
      sleep 3
      echo def >> ${optfile}
      sleep 3
    done
fi



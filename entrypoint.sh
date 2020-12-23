#!/bin/sh -l 
for i in $5
do
    if [`echo $4 | grep $i`] ; then
        list+=( $i )
done

for j in list
do
    dotnet build ./$j/$j.csproj

dotnet build $5
/resharper/inspectcode.sh $1 $2 $3 $4 --no-swea
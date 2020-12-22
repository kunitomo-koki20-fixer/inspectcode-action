#!/bin/sh -l

dotnet build $1
/resharper/inspectcode.sh $1 $2 $3 $4
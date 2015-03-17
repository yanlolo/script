#! /bin/bash 

# convert R output to SVMfile

# $1 is the source data file
# $2 is the output file 
# '$label' need to modify to coorespond to the label line index
# 'index/$index' need to update to the feature index

awk '{print $label,"index:"$index}' $1 > $2

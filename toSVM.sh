#! /bin/bash 

# convert R output to SVMfile

# $1 is the source data file
# $2 is the output file 
# '$label' need to modify to coorespond to the label line index
# 'index/$index' need to update to the feature index


awk '{print $13,"3:"$3,"4:"$4,"5:"$5,"6:"$6,"7:"$7,"8:"$8,"9:"$9,"10:"$10,"11:"$11,"12:"$12}' $1 > $2
sed -i '1d' $2
sed -i -e 's/"Yes"/1/g' -e 's/"No"/0/g' $2
sed -i -e 's/"Good"/1/g' -e 's/"Medium"/0/g' -e 's/"Bad"/-1/g' $2



#!/bin/bash

echo "----- uncomment \"#0.0.0.0\" and \"# 0.0.0.0\" -----"

touch hosts_temp hosts_temp2
sed 's/#0.0.0.0/0.0.0.0/g' hosts_raw > hosts_temp
sed 's/#[[:space:]]0.0.0.0/0.0.0.0/g' hosts_temp > hosts_temp2
mv hosts_temp2 hosts_adblocks
rm hosts_temp



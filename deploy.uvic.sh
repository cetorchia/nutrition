#!/bin/sh
#
# Deploy Nutritional Information app to UVic's server
# (c) Carlos E. Torchia under GPL2
#

# Deploy PHP app on UVic web server
ssh uvic -C 'rm -rf www/nutrition ; mkdir www/nutrition'
scp -r * uvic:www/nutrition/
ssh uvic -C 'mv www/nutrition/def.php.uvic www/nutrition/def.php'


#!/bin/sh

#Delete current theme.
rm -rf dist

#Clone the latest version of bootstrap.
#git clone https://github.com/twbs/bootstrap

#Copy the distribution the root folder.
cp -r bootstrap/dist .

#Create new bootstrap based css with updated variables from the less directory
lessc -x less/civicrm.less dist/css/bootstrap.min.css

#Delete the cloned bootstrap repo now that we are done with it.
#rm -rf bootstrap

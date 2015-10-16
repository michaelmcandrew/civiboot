#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

#Delete current theme.
rm -rf dist

#Clone the latest version of bootstrap.
git -C bootstrap pull

#Copy the distribution the root folder.
cp -r bootstrap/dist .

#Create new bootstrap based css file (bootstrap-civicrm.min.css) with updated variables from less/civicrm.less
lessc -x less/civicrm.less dist/css/bootstrap-civicrm.min.css

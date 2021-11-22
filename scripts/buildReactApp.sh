#!/bin/bash

reactAppPath="~/Dropbox/0_Webdevelopment/Projects/React/Live/PersonalWebsite"
dockerAppPath="~/Dropbox/0_Webdevelopment/Docker/Live/PersonalWebsite"

rm -rf ${dockerAppPath}/www

mkdir ${dockerAppPath} www

npm run build --prefix \
    ${reactAppPath}

cp ${reactAppPath}/build ${dockerAppPath}/www
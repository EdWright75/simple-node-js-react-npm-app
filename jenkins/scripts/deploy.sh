#!/usr/bin/env sh

echo 'The following script copies the built application into the docker'
echo 'container so the image can be pushed to the Docker Hub Registry'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
set -x
npm run build
set +x

set -x
docker build -t edwright6975df/frontend-docker .
set +x

set x

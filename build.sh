docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kanishk10k/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kanishk10k/$JOB_NAME:latest

docker push kanishk10k/$JOB_NAME:$BUILD_ID

docker push kanishk10k/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kanishk10k/$JOB_NAME:$BUILD_ID kanishk10k/$JOB_NAME:latest

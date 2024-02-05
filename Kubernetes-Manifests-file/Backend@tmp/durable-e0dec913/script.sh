
                            git config user.email "gaftofi@gmail.com"
                            git config user.name "abdulxs"
                            BUILD_NUMBER=${BUILD_NUMBER}
                            echo $BUILD_NUMBER
                            echo "this is the repo name and image tag before ops: {AWS_ECR_REPO_NAME}"
                            imageTag=$(grep 'backend:' deployment.yaml | awk '{print $2}')
                            echo "this is the image tag before ops: $imageTag"
                            imageTag=$(grep -oP '(?<=backend:)[^ ]+' deployment.yaml)
                            echo $imageTag
                            sed -i "s/${AWS_ECR_REPO_NAME}:${imageTag}/${AWS_ECR_REPO_NAME}:${BUILD_NUMBER}/" deployment.yaml
                            echo "this is the repo name and image tag after ops: {AWS_ECR_REPO_NAME} and $imageTag"
                            echo "this is the buid number after ops: ${BUILD_NUMBER}"
                            git add ../../Kubernetes-Manifests-file/Backend/deployment.yaml
                            git add ../../.
                            git add ../../Application-Code/.
                            git commit -m "Update deployment Image to version ${BUILD_NUMBER}"
                            git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:master
                        
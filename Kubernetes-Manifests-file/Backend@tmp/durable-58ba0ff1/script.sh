
                            git config user.email "gaftofi@gmail.com"
                            git config user.name "abdulxs"
                            BUILD_NUMBER=${BUILD_NUMBER}
                            echo $BUILD_NUMBER
                            imageTag=$(grep 'backend:' deployment.yaml | awk '{print $2}')
                            echo $imageTag
                            sed -i "s#${AWS_ECR_REPO_NAME}:${imageTag}#${AWS_ECR_REPO_NAME}:${BUILD_NUMBER}#" deployment.yaml
                            git add deployment.yaml
                            git add ../../.
                            git add ../../Application-Code/.
                            git commit -m "Update deployment Image to version ${BUILD_NUMBER}"
                            git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:master
                        
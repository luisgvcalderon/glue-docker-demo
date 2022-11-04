$PROFILE_NAME="vol-prc-developer"
$REGION="us-east-1"
$WORKSPACE_LOC='V:\Code\y4-demo\aws\glue-docker\'
$SCRIPT_FILE='sample.py'

# Local Desarollar Glue Script Python -> AWS Glue

# Computadora
# Requerimiento
# Docker
# Credenciales configuradas AWS CLI en sus computadoras locales

## Spark Summit
# docker run -it -v ${env:USERPROFILE}/.aws:/home/glue_user/.aws -v ${WORKSPACE_LOC}:/home/glue_user/workspace/ -e AWS_PROFILE=${PROFILE_NAME} -e AWS_REGION=${REGION} -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 --name glue_spark_submit amazon/aws-glue-libs:glue_libs_3.0.0_image_01 spark-submit /home/glue_user/workspace/src/${SCRIPT_FILE}
## PySpark REPL
# docker run -it -v ${env:USERPROFILE}/.aws:/home/glue_user/.aws -v ${WORKSPACE_LOC}:/home/glue_user/workspace/ -e AWS_PROFILE=${PROFILE_NAME} -e AWS_REGION=${REGION} -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 --name glue_pyspark amazon/aws-glue-libs:glue_libs_3.0.0_image_01 pyspark
## Jupyter Notebook
# docker run -it -v ${env:USERPROFILE}/.aws:/home/glue_user/.aws -v ${WORKSPACE_LOC}:/home/glue_user/workspace/jupyter_workspace/ -e AWS_PROFILE=${PROFILE_NAME} -e AWS_REGION=${REGION} -e DISABLE_SSL=true --rm -p 4040:4040 -p 18080:18080 -p 8998:8998 -p 8888:8888 --name glue_jupyter_lab amazon/aws-glue-libs:glue_libs_3.0.0_image_01 /home/glue_user/jupyter/jupyter_start.sh

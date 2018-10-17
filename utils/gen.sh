#!/bin/sh
cd $(dirname $0)
ROOT="$(dirname $(pwd))"
cd -
DEFINE_DIR="${ROOT}/define"
PHP_CODE_DIR="${ROOT}/php"
OC_CODE_DIR="${ROOT}/oc"
JAVA_CODE_DIR="${ROOT}/src/main/java"
JAVA_RESOURCES_DIR="${ROOT}/src/main/resources"
THRIFT_TMP="${ROOT}/define/.thrift.tmp"

echo "generate thrift file"
for file in `find ${DEFINE_DIR} -name "*.thrift"` 
do
	echo include \"$file\" >> ${THRIFT_TMP}
done
echo "done"

echo cleanup php code dir
if [ ! -d "$PHP_CODE_DIR" ];then
	mkdir ${PHP_CODE_DIR}
else
    rm -rf ${PHP_CODE_DIR}/*
fi
echo done

echo cleanup java code dir
if [ ! -d "$JAVA_CODE_DIR" ];then
	mkdir -p ${JAVA_CODE_DIR}
else
    rm -rf ${JAVA_CODE_DIR}/*
fi
echo done

echo cleanup oc code dir
if [ ! -d "$OC_CODE_DIR" ];then
	mkdir -p ${OC_CODE_DIR}
else
    rm -rf ${OC_CODE_DIR}/*
fi
echo done


echo "start generate php code to ${PHP_CODE_DIR}...."
thrift -r --gen php -out ${PHP_CODE_DIR} ${THRIFT_TMP}
echo "done"

echo "start generate java code to ${JAVA_CODE_DIR}..."
thrift -r --gen java -out ${JAVA_CODE_DIR} ${THRIFT_TMP}

echo "start generate oc code to ${JAVA_CODE_DIR}..."
thrift -r --gen cocoa -out ${OC_CODE_DIR} ${THRIFT_TMP}


if [ ! -d $JAVA_RESOURCES_DIR ];then
    mkdir $JAVA_RESOURCES_DIR
fi
if [ -e "$JAVA_RESOURCES_DIR/register-services.xml" ];then
	rm "$JAVA_RESOURCES_DIR/register-services.xml"
fi
cp $DEFINE_DIR/register-services.xml $JAVA_RESOURCES_DIR
echo "done"

rm ${THRIFT_TMP}

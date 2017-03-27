# Install python modules
mkdir -p ${PREFIX}/py_src
cp py_src/*.py ${PREFIX}/py_src
echo "${PREFIX}" > ${PREFIX}/lib/python2.7/site-packages/py_src.pth
python -m compileall ${PREFIX}/py_src

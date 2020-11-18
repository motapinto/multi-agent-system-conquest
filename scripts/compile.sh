# Compilation script
# To be executed in the root of the package (source code) hierarchy
# Compiled code is placed under ./out/

rm -rf out
mkdir out

javac $(find . | grep .java) -classpath ./lib/jade.jar -d out

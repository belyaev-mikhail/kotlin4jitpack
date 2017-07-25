cd kotlin 
ant -f update_dependencies.xml 
ant -f build.xml 
mvn deploy:deploy-file \
    -Dfile=dist/kotlin-compiler-before-shrink.jar \
    -DgroupId=org.jetbrains.kotlin \
    -DartifactId=kotlin-compiler-full \
    -Dversion=1.1.3 \
    -Dpackaging=jar \
    -Durl="https://api.bintray.com/maven/vorpal-research/kotlin-maven/ktuples/;publish=1" \
    -DrepositoryId=bintray-vorpal-research-kotlin-maven


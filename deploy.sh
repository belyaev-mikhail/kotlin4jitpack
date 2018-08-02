: ${JDK:?"Need to set JDK to your current JDK location"}

export JDK_16=$JDK
export JDK_17=$JDK
export JDK_18=$JDK
export JDK_9=$JDK

cd kotlin 

./gradlew :kotlin-compiler:dist
./gradlew :kotlin-compiler:sourcesJar

mvn deploy:deploy-file \
    -Dfile=prepare/compiler/build/libs/kotlin-compiler-1.2-SNAPSHOT-before-proguard.jar \
    -DgroupId=org.jetbrains.kotlin \
    -DartifactId=kotlin-compiler-nostrip \
    -Dversion=1.2.60 \
    -Dpackaging=jar \
    -Durl="https://api.bintray.com/maven/vorpal-research/kotlin-maven/kotlin-compiler-nostrip/;publish=1" \
    -DrepositoryId=bintray-vorpal-research-kotlin-maven

mvn deploy:deploy-file \
    -Dfile=prepare/compiler/build/libs/kotlin-compiler-1.2-SNAPSHOT-sources.jar \
    -DgroupId=org.jetbrains.kotlin \
    -DartifactId=kotlin-compiler-nostrip \
    -Dversion=1.2.60 \
    -Dpackaging=jar \
    -Dclassifier=sources \
    -Durl="https://api.bintray.com/maven/vorpal-research/kotlin-maven/kotlin-compiler-nostrip/;publish=1" \
    -DrepositoryId=bintray-vorpal-research-kotlin-maven

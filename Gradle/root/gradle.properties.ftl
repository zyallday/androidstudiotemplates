# Project-wide Gradle settings.

# IDE (e.g. Android Studio) users:
# Gradle settings configured through the IDE *will override*
# any settings specified in this file.

# For more details on how to configure your build environment visit
# http://www.gradle.org/docs/current/userguide/build_environment.html

# Specifies the JVM arguments used for the daemon process.
# The setting is particularly useful for tweaking memory settings.
<#if isLowMemory!false>
org.gradle.jvmargs=-Xmx1024m
<#else>
org.gradle.jvmargs=-Xmx1536m
</#if>

# When configured, Gradle will run in incubating parallel mode.
# This option should only be used with decoupled projects. More details, visit
# http://www.gradle.org/docs/current/userguide/multi_project_builds.html#sec:decoupled_projects
# org.gradle.parallel=true

MAVEN_URL=http://maven.mbd.qiyi.domain/nexus/content/repositories/mbd-show/
GROUP=com.example
POM_ARTIFACT_ID=SampleApp
VERSION_NAME=1.0.0
USERNAME=username
PASSWORD=password
POM_NAME=Sample App
POM_PACKAGING=aar
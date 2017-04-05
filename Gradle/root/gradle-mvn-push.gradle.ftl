/*
 * Copyright 2013 Chris Banes
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * How to use
 * usage: [apply from: project.file('gradle-mvn-push.gradle')]
 */

apply plugin: 'maven'
apply plugin: 'signing'

def isReleaseBuild() {
  return VERSION_NAME.contains("SNAPSHOT") == false
}


afterEvaluate { project ->
  uploadArchives {
    repositories {
      mavenDeployer {
        beforeDeployment { MavenDeployment deployment -> signing.signPom(deployment) }

        pom.groupId = GROUP
        pom.artifactId = POM_ARTIFACT_ID
        pom.version = VERSION_NAME

        repository(url: MAVEN_URL) {
          authentication(userName: USERNAME ,password: PASSWORD)
        }

        pom.project {
          name POM_NAME
          packaging POM_PACKAGING
        }
      }
    }
  }

  signing {
    required { isReleaseBuild() && gradle.taskGraph.hasTask("uploadArchives") }
    sign configurations.archives
  }

  task androidJavadocs(type: Javadoc) {
    source = android.sourceSets.main.java.srcDirs
    classpath += project.files(android.getBootClasspath().join(File.pathSeparator))

    if (JavaVersion.current().isJava8Compatible()) {
      allprojects {
        tasks.withType(Javadoc) {
          options.addStringOption('Xdoclint:none', '-quiet')
        }
      }
    }
  }

  task androidJavadocsJar(type: Jar, dependsOn: androidJavadocs) {
    classifier = 'javadoc'
    from androidJavadocs.destinationDir
  }

  task androidSourcesJar(type: Jar) {
    classifier = 'sources'
    from android.sourceSets.main.java.sourceFiles
  }

  artifacts {
    archives androidSourcesJar
    archives androidJavadocsJar
  }
}

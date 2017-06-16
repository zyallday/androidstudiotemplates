<?xml version="1.0"?>
<recipe>
    <instantiate from="root/gradle-mvn-push.gradle.ftl"
			to="${escapeXmlAttribute(projectOut)}/gradle-mvn-push.gradle" />
    <instantiate from="root/gradle.properties.ftl"
			to="${escapeXmlAttribute(projectOut)}/gradle.properties" />
    <merge from="root/build.gradle.ftl"
			to="${escapeXmlAttribute(projectOut)}/build.gradle" />
	<open file="${escapeXmlAttribute(projectOut)}/build.gradle"/>
</recipe>

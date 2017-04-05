<?xml version="1.0"?>
<recipe>
    <merge from="root/build.gradle.ftl"
			to="${escapeXmlAttribute(projectOut)}/build.gradle" />
	<open file="${escapeXmlAttribute(projectOut)}/build.gradle"/>
</recipe>

<?xml version="1.0"?>
<recipe>

    <mkdir at="${escapeXmlAttribute(projectOut)}/keystores" />
    <instantiate from="root/KeystoreGen.sh.ftl"
                   to="${escapeXmlAttribute(projectOut)}/keystores/KeystoreGen.sh" />

    <instantiate from="root/ReadKeyStore.sh.ftl"
                   to="${escapeXmlAttribute(projectOut)}/keystores/ReadKeyStore.sh" />
    <merge from="root/build.gradle.ftl"
    		to="${escapeXmlAttribute(projectOut)}/build.gradle"/>

    <open file="${escapeXmlAttribute(projectOut)}/keystores/KeystoreGen.sh"/>
</recipe>

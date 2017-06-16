<?xml version="1.0"?>
<recipe>
    <mkdir at="${escapeXmlAttribute(resOut)}/xml" />
    <instantiate from="root/xml/network_config.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/xml/network_config.xml"/>
    <open file="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>
</recipe>
dependencies {
    
    compile "com.google.auto.value:auto-value:latest.release"
    annotationProcessor "com.google.auto.value:auto-value:latest.release"

    <#if isGsonSupport!false>
        provided 'com.ryanharter.auto.value:auto-value-gson:latest.release'
        annotationProcessor 'com.ryanharter.auto.value:auto-value-gson:latest.release'
    </#if>
    <#if isParcelableSupport!false>
        annotationProcessor 'com.ryanharter.auto.value:auto-value-parcel:latest.release'
    </#if>
    <#if isParcelAdapterSupport!false>
        annotationProcessor 'com.ryanharter.auto.value:auto-value-parcel-adapter:latest.release'
    </#if>
    <#if isRedactedSupport!false>
        annotationProcessor 'com.squareup.auto.value:auto-value-redacted:latest.release'
    </#if>
    <#if isWithSupport!false>
        annotationProcessor 'com.gabrielittner.auto.value:auto-value-with:latest.release'
    </#if>
}
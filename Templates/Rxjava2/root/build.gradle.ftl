dependencies {
    compile 'io.reactivex.rxjava2:rxjava:latest.release'
    <#if retrofitRxjava2adapterSupport!false>
        compile 'com.squareup.retrofit2:adapter-rxjava2:latest.release'
    </#if>
    <#if rxandroid2Support!false>
        compile 'io.reactivex.rxjava2:rxandroid:latest.release'
    </#if>
    <#if rxbinding2Support!false>
        compile 'com.jakewharton.rxbinding2:rxbinding:latest.release'
    </#if>
    <#if rxbinding2v4Support!false>
        compile 'com.jakewharton.rxbinding2:rxbinding-support-v4:latest.release'
    </#if>
    <#if rxbinding2v7Support!false>
    compile('com.jakewharton.rxbinding2:rxbinding-appcompat-v7:latest.release', {exclude module:'appcompat-v7'})
    </#if>
    <#if rxbinding2recyclerviewSupport!false>
    compile('com.jakewharton.rxbinding2:rxbinding-recyclerview-v7:latest.release', {exclude module:'recyclerview-v7'})
    </#if>
}

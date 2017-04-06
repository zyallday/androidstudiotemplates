dependencies {
    compile 'com.squareup.retrofit2:retrofit:latest.release'
    compile 'com.squareup.retrofit2:converter-gson:latest.release'
    compile 'com.squareup.retrofit2:adapter-rxjava2:latest.release'
    compile 'io.reactivex.rxjava2:rxjava:latest.release'
    compile 'io.reactivex.rxjava2:rxandroid:latest.release'
    compile 'com.jakewharton.rxbinding2:rxbinding:latest.release'
    compile 'com.jakewharton.rxbinding2:rxbinding-support-v4:latest.release'
    compile('com.jakewharton.rxbinding2:rxbinding-appcompat-v7:latest.release') {
        exclude module:"appcompat-v7"
    }
    compile('com.jakewharton.rxbinding2:rxbinding-recyclerview-v7:latest.release') {
        exclude module:"recyclerview-v7"
    }
}

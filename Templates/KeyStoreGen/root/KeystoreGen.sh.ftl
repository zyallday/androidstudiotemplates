#!/usr/bin/env bash
# 这个shell用于生成生产环境Keystore

keytool -genkey \
-v -keystore ${storeFileName} \
-dname "CN=${name}, OU=${organizationalUnit}, O=${organization}, L=${city}, ST=${stateOrProvince}, C=${countryCode}" \
-alias ${keyAlias} \
-keypass ${storeFileName} \
-keyalg RSA \
-keysize 2048 \
-validity 36500 \
-storepass ${keyPass}

#!/usr/bin/env sh

sha1=`echo -n $1 | openssl dgst -sha1`
base64=`echo -n $1 | openssl sha1 -binary | openssl base64`

echo "SHA1:       " $sha1
echo "SHA1-Half:  " `echo -n $sha1 | cut -c -20`
echo "Base64:     " $base64
echo "Base64-Half:" `echo -n $base64 | cut -c -14`

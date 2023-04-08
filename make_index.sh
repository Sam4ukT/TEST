#!/bin/bash
#
OUT_FILE="test.txt"
FILE_NAME="NanitCore.zip"
HOST="https://sam4ukt.github.io"
FILE_SIZE=$(stat -c %s ${FILE_NAME})
SHA256=$(sha256sum ${FILE_NAME})
FILE_PATH="TEST"

# sha256sum Nanit.zip

cat <<EOF >"${OUT_FILE}"
{
  "packages": [
    {
      "name": "Nanit",
      "maintainer": "NanitRobots",
      "websiteURL": "",
      "email": "",
      "help": {
        "online": ""
      },
      "platforms": [
        {
          "name": "Nanit",
          "architecture": "avr",
          "version": "0.0.3",
          "category": "Contributed",
          "help": {
            "online": ""
          },
          "url": "${HOST}/${FILE_PATH}/${FILE_NAME}",
          "archiveFileName": "${FILE_NAME}",
          "checksum" : "SHA-256:${SHA256}",
          "size" : "${FILE_SIZE}",
          "boards": [
            {
              "name": "Nanit Discovery 2.0"
            },
            {
              "name": "Nanit Discovery 3"
            },
            {
              "name": "Nanit Discovery 3.1"
            },
            {
              "name": "Nanit Smart Home (Nanit 3.1 based)"
            },
            {
              "name": "Nanit Smart Home (Nanit 3.22 based)"
            }
          ]
        }
      ]
    }
  ]
}
EOF

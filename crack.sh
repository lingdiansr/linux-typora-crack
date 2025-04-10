#! /bin/bash

RESOURCES_PATH=/usr/share/typora/resources
windows_file=$RESOURCES_PATH/window.html
license_file=$(find $RESOURCES_PATH -name "LicenseIndex.*.*.chunk.js"  2>/dev/null)
diaglog_file=$RESOURCES_PATH/page-dist/static/js/0.99879679.chunk.js

sed -i 's|</body>|</body><style>body>div[role="button"]{visibility:hidden;}</style>|' $windows_file
# echo $license_file

sed -i 's|e.hasActivated="true"==e.hasActivated|e.hasActivated="true"=="true"|' $license_file

sed -i "2i\var div = document.createElement('div');div.id = 'myOverlay';\
div.style.position = 'fixed';\
div.style.top = '0';\
div.style.left = '0';\
div.style.width = '100vw'; \
div.style.height = '100vh'; \
div.style.backgroundColor = 'rgb(54,59,64)'; \
div.style.zIndex = '9999'; \
document.body.appendChild(div);\
setTimeout(function () {\
    var overlay = document.getElementById('myOverlay');\
    if (overlay) {\
        overlay.remove(); \
    }\
    document.querySelector('.default-btn.secondary-btn')\
}, 360); \
" $diaglog_file

chmod 777 /usr/share/typora/resources/plugin/global/settings/* -R
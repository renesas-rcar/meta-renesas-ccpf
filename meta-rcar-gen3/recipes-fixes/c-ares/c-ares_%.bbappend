SRC_URI := "${@d.getVar('SRC_URI').replace('c-ares.git', 'c-ares.git;protocol=https;branch=main')}"


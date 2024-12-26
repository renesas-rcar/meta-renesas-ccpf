SRC_URI := "${@d.getVar('SRC_URI').replace('c-ares.org/download', 'github.com/c-ares/c-ares/releases/download/cares-1_27_0')}"


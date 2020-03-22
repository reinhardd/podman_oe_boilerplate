
function gen_local_conf_sample
{
    local USE_DL_DIR=$1
    local USE_SSC_DIRS=$2
    cp conf/local.conf.tmpl conf/local.conf.sample
    echo "MACHINE = \"$MACHINE\"" >> conf/local.conf.sample
    echo "UDD $USE_DL_DIR"
    if [ "x$USE_DL_DIR" != "x" ]; then
        # echo "patch dldir"
        echo "DL_DIR = \"$USE_DL_DIR\"" >> conf/local.conf.sample
        echo "" >> conf/local.conf.sample
    fi

    if [ "x$USE_SSC_DIRS" != "x" ]; then
        echo "patch ssdir <$USE_SSC_DIRS>"
        echo "SSTATE_MIRRORS ?= \"\\ " >> conf/local.conf.sample
        for SSC_SP in $USE_SSC_DIRS; do
            # echo "patch ssdir <$SSC_SP>"
            echo " file://.* file://$SSC_SP/PATH \\n \\" >> conf/local.conf.sample
        done
        echo "\" " >> conf/local.conf.sample
    fi
}

function gen_bblayers_conf_sample
{
    local GLAYERS=`cat repo.txt | grep "^layer\: " | cut -d' ' -f2`
    echo "GLAYERS $GLAYERS"
    # LAYERS=`cat repo.txt | grep "_layers " | cut -d' ' -f2-`
    # echo "LAYERS $LAYERS"
    echo 'POKY_BBLAYERS_CONF_VERSION = "2" ' > conf/bblayers.conf.sample
    echo 'BBPATH = "${TOPDIR}"' >> conf/bblayers.conf.sample
    echo 'BBFILES ?= "" ' >> conf/bblayers.conf.sample
    echo 'BBLAYERS ?= " \ ' >> conf/bblayers.conf.sample

    for layer in $GLAYERS; do
        echo "$PWD/layers/$layer \\" >> conf/bblayers.conf.sample
    done
    echo '"' >> conf/bblayers.conf.sample
    echo "" >> conf/bblayers.conf.sample
    echo 'BBLAYERS_NON_REMOVABLE ?= " \ ' >> conf/bblayers.conf.sample
    echo '  ##OEROOT##/meta \ ' >> conf/bblayers.conf.sample
    echo '"' >> conf/bblayers.conf.sample
}

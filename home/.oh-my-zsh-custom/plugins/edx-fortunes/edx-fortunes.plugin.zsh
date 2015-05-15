for i in $(ls -1 $ZSH_CUSTOM/plugins/edx-fortunes/fortunes/* | grep -v .dat) ; do
    DATFILE="${i}.dat"
    if [ ! -f "${DATFILE}" ]; then
        FILE=$(basename $i)
        strfile $ZSH_CUSTOM/plugins/edx-fortunes/fortunes/${FILE} $ZSH_CUSTOM/plugins/edx-fortunes/fortunes/${FILE}.dat > /dev/null 2>&1
    fi
done


alias fortune="fortune -a $ZSH_CUSTOM/plugins/edx-fortunes/fortunes/"

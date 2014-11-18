

filetype=gih
gimppath=~/.gimp-2.8/brushes
for filename in exports/*.${filetype} ;  do
    export pkgname=`echo ${filename} |sed -e "s/\.${filetype}$//" -e "s/exports\///"`
    ln -sf `pwd`/${filename} ${gimppath}/${pkgname}.${filetype}
done

filetype=pat
gimppath=~/.gimp-2.8/patterns
for filename in exports/*.${filetype} ;  do
    export pkgname=`echo ${filename} |sed -e "s/\.${filetype}$//" -e "s/exports\///"`
    ln -sf `pwd`/${filename} ${gimppath}/${pkgname}.${filetype}
done

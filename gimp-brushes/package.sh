#!/bin/bash


for filetype in gih pat png; do 
    for filename in exports/*.${filetype} ;  do
        export pkgname=`echo ${filename} |sed -e "s/\.${filetype}$//" -e "s/exports\///"`
        zip packages/${pkgname}.zip ${filename}  Thank\ You.txt LICENSE
    done
done
#zip packages/MedinaBuildings.zip     MedinaBuildings.gih     Thank\ You.txt
#zip packages/UniqueBuildings.zip     UniqueBuildings.gih     Thank\ You.txt
#zip packages/GenericBuildings.zip    GenericBuildings.gih    Thank\ You.txt
#zip packages/Trees.zip               Trees.gih               Thank\ You.txt
#
#zip packages/cobblestones.zip        cobblestones.pat        Thank\ You.txt
#zip packages/hashing.zip             hashing.pat             Thank\ You.txt

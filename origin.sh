for x in `cat projects.txt`; do pushd ../$x; echo $x; git remote show origin; popd; done

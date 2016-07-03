for x in `cat projects.txt`; do pushd ../$x; echo $x; git push mdupont; popd; done

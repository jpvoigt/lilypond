#!/bin/sh

if test "$1" == "--fresh"; then
  fresh=yes
fi

if test ! -f config-cov.make; then
  fresh=yes
fi

if test "$fresh" = "yes";
then
  ./configure --enable-config=cov --disable-optimising \
   &&   make conf=cov -j2 clean \
   &&   perl -i~ -pe 's/-pipe /-fprofile-arcs -ftest-coverage -pipe /g' config-cov.make \
   &&   perl -i~ -pe 's/ -ldl / -lgcov -ldl /g' config-cov.make
else
  find -name '*.gcda' -exec rm  '{}' ';'
fi

mkdir -p scripts/out-cov/
touch  scripts/out-cov/midi2ly.1
make conf=cov -j2 &&  \
  make conf=cov test-clean OUT_TEST=testcov LILYPOND_JOBS= && \
  make conf=cov test OUT_TEST=testcov LILYPOND_JOBS= 

if test "$?" != "0"; then
  tail -100 out-cov/test-run.log
  exit 1
fi

depth=../..
resultdir=out/coverage-results

rm -rf $resultdir
mkdir $resultdir
cd $resultdir

ln $depth/lily/* .
ln $depth/lily/out-cov/*[ch] .
mkdir include
ln $depth/lily/include/* include/
ln $depth/flower/include/* include/
for a in *[cl] *.yy
do
   gcov -o $depth/lily/out-cov/  -p $a > $a.gcov-summary
done 

cat <<EOF

now run 

         python buildscripts/coverage.py --uncovered $resultdir/*.cc

EOF

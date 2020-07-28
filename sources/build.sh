#!/bin/sh

#===========================================================================
#Update this variable ==========================================================

thisFont="Eczar"  #must match the name in the font file

#===========================================================================
#Generating fonts ==========================================================

#source ../env/bin/activate
set -e

#echo "CLEAN FONTS FOLDERS"
#rm -rf ./fonts/ttf/ ./fonts/otf/ ./fonts/variable/ ./fonts/web/

echo ".
GENERATING STATIC TTF
."
mkdir -p ../fonts/ttf
glyphs2ufo $thisFont.glyphs --generate-GDEF
fontmake -m $thisFont.designspace -o ttf --output-dir ../fonts/ttf/
#fontmake -g $thisFont.glyphs -i -o ttf --output-dir ../fonts/ttf/

echo ".
GENERATING STATIC OTF
."
mkdir -p ../fonts/otf
fontmake -m $thisFont.designspace -o otf --output-dir ../fonts/otf/
#fontmake -g $thisFont.glyphs -i -o otf --output-dir ../fonts/otf/

#============================================================================
#Post-processing fonts ======================================================

echo ".
POST-PROCESSING TTF
."
ttfs=$(ls ../fonts/ttf/*.ttf)
echo $ttfs
for ttf in $ttfs
do
	gftools fix-dsig --autofix $ttf
	ttfautohint $ttf $ttf.fix
	[ -f $ttf.fix ] && mv $ttf.fix $ttf
	gftools fix-hinting $ttf
	[ -f $ttf.fix ] && mv $ttf.fix $ttf
	gftools fix-weightclass $ttf
	[ -f $ttf.fix ] && mv $ttf.fix $ttf
done

echo ".
POST-PROCESSING OTF
."
otfs=$(ls ../fonts/otf/*.otf)
for otf in $otfs
do
	gftools fix-dsig --autofix $otf
done

rm -rf master_ufo/ instance_ufo/ *.ufo *.designspace

echo ".
COMPLETE!
."

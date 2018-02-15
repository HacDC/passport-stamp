# Written by Kevin Cole (ubuntourist) <dc.loco@gmail.com> 2018.02.13 (kjc)
#
# This uses the HacDC logo SVG to create the basic OpenSCAD script for a
# printable passport stamp. The OpenSCAD file must then be manually edited
# to add a 3 mm base, and lettering.

all:
	convert HacDC-logo_only.svg passport-stamp.png
	png23d -w 56.3 -d 3 -o scad passport-stamp.png passport-stamp.scad
	sed -i "s|, triangles = |, faces = |" passport-stamp.scad
	sed -i "1s|^|// File generated: `date`\n|" passport-stamp.scad
	sed -i "2s|^|// REMEMBER TO ADD THE BASE LAYER!!!\n\n|" passport-stamp.scad

test:
	convert HacDC-logo_only.svg passport-stamp.png
	png23d -w 56.3 -d 3 -o scad passport-stamp.png passport-stamp.scad
	sed -i "s|, triangles = |, faces = |" passport-stamp.scad
	sed -i "1s|^|// File generated: `date`\n|" passport-stamp.scad
	sed -i "2s|^|// REMEMBER TO ADD THE BASE LAYER!!!\n\n|" passport-stamp.scad
	openscad -o passport-stamp.stl passport-stamp.scad

clean:
	rm passport-stamp.png passport-stamp.scad

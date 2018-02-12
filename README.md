# HacDC Passport Stamp
## Created by Kevin Cole (Ubuntourist) &lt;dc.loco@gmail.com&gt; 2018.02.10

The PNG image was produced from **HacDC-logo_only.svg** included in the
[HacDC Logo GitHub repository](https://github.com/HacDC/Logo).

The SVG states that the size is 1279 x 1361 pixels.

American passport booklets are roughly 125 mm * 87.5 mm. I'm
arbitrarily deciding that a passport stamp should be no larger than
60 * 60 mm. 

(The two stamps in my current passport are roughly 43 * 27.)

Although **OpenSCAD** can work with large PNGs and scale them down,
it's not happy about it. Documentation indicates that the PNG should
be more in the range of 100 x 100, which can be achieved via
**ImageMagick**:

    convert -size 1279x1361 HacDC-logo_only.svg \
	        -resize 128x136 HacDC-logo_only.png 

However, this resulted in a degradation of the rendered model.  So,
I'm currently staying at the original size -- produced by using Eye of
Gnome (eog) to view the image and save it as a PNG.

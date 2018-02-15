# HacDC Passport Stamp
## Created by Kevin Cole (Ubuntourist) &lt;dc.loco@gmail.com&gt; 2018.02.10

The PNG image was produced from **HacDC-logo_only.svg** included in the
[HacDC Logo GitHub repository](https://github.com/HacDC/Logo).

### Initial thoughts

The SVG states that the size is 1279 x 1361 units.

American passport booklets are roughly 125 mm * 87.5 mm. I'm
arbitrarily deciding that a passport stamp should be no larger than
60 * 60 mm. 

(The two stamps in my current passport are roughly 43 * 27.)

### Installation and Usage

    apt install imagemagick png23d sed openscad make
    make clean
    make all

Then edit the resulting SCAD file to add a base and text.  

(A quick test can be made via **`make test`** which will produce an
STL without the base or text. This can be fed into **`cura`** to
preview the conversion.)

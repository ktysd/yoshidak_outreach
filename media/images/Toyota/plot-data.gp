set term epscairo color enhanced font "FreeSerifItalic,18"

#set style line 1 lt 2 lw 2 lc rgbcolor "black" #"dark-green"
#set style line 2 lt 4 lw 2 lc rgbcolor "black" #"gray50" # "blue"
#set style line 3 lt 1 lw 2 lc rgbcolor "black" #"red"
#set style line 4 lt 1 lw 2 lc rgbcolor "black"

set style line 1 lt 2 lw 2 lc rgbcolor "dark-green"
set style line 2 lt 4 lw 2 lc rgbcolor "blue"
set style line 3 lt 1 lw 2 lc rgbcolor "red"
set style line 4 lt 1 lw 2 lc rgbcolor "black"

set xtics auto out; set mxtics 4
set ytics auto out
set xrange[1.2:3.2]; 
set xtics 1.2,0.5,3.2; set mxtics 5
set grid ytics xtics mxtics

datf="dataNo1.dat"
set output "dataNo1.eps"
set multiplot
set size 1,0.8
set origin 0,0
set yrange [-40:120]; set ytics -40,40,120; set mytics 4
set xlabel "{/Times-Italic=20 t} {/Times-Roman [s]}"
set ylabel "Torques {/Times-Roman [Nm]}" offset 1,0
set key right bottom spacing 1.2 samplen 2 width 0.5
#set label "{/=20 Satationary}" at 2.01,-10
#set label "{/=20 Intervals}" at 2.01,-23
set label "{/=20 停留区間}" at 2.01,-23 font "Meiryo,28"
set arrow from 1.98,-22 to 1.93,-12
set arrow from 1.81,-23 to 1.85,-12
set arrow from 1.80,-24 to 1.77,-12
plot \
 datf using 1:($2*1) t "{/Times-Italic T}_{eg}" w l ls 1, \
 datf using 1:($3*1) t "{/Times-Italic T}_{tm}" w l ls 2, \
 datf using 1:4 t "{/Times-Italic T}_{ds}"  w l ls 3

unset label; unset arrow;
set size 1,0.3
set origin 0,0.7
set ylabel "{/Times-Italic a{/Times-Roman (}t{/Times-Roman )}}" offset 1,0
unset xlabel
set yrange [-0.1:1]; set ytics 0,0.5,1; set mytics 5
set format x ""
set key right top spacing 1 width -10
plot \
 datf using 1:($5/100) t ""  w l ls 4
# datf using 1:($5/100) t "{/Times-Roman=24 Throttle opening ratio {/\Times-Italic a}}"  w l ls 4
unset multiplot
unset output
unset size; unset format; unset origin; 

datf="dataNo2.dat"
set output "dataNo2.eps"
set multiplot
unset label; unset arrow;
set size 1,0.8
set origin 0,0
set yrange [-40:120]; set ytics -40,20,120; set mytics 2
set xlabel "{/Times-Italic=30 t} {/Times-Roman [s]}"
set ylabel "Torques {/Times-Roman [Nm]}" offset 1,0
set key right bottom spacing 1.2 samplen 2 width 0.5
plot \
 datf using 1:($2*1) t "{/Times-Italic T}_{eg2}" w l ls 1, \
 datf using 1:($3*1) t "{/Times-Italic T}_{tm2}" w l ls 2, \
 datf using 1:4 t "{/Times-Italic T}_{ds2}"  w l ls 3
set size 1,0.3
set origin 0,0.7
set ylabel "{/Times-Italic a{/Times-Roman (}t{/Times-Roman )}}" offset 1,0
unset xlabel
set yrange [-0.1:1]; set ytics 0,0.5,1; set mytics 5
set format x ""
set key right top spacing 1 width -10
plot \
 datf using 1:($5/100) t ""  w l ls 4
# datf using 1:($5/100) t "{/Times-Roman=24 Throttle opening ratio {/\Times-Italic a}}"  w l ls 4
unset multiplot
unset output


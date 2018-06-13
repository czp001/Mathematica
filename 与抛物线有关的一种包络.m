f[k_] := Module[{},
  l = Table[{{y^2/4, y}, {y^2/4 + (2*k)/Sqrt[4 + y^2], 
      y - (y*k)/Sqrt[4 + y^2]}}, {y, -9, 9, 0.1}];
  Show[ContourPlot[{y^2 == 4 x, 
     4 k^2 (4 + y^2)^3 == (4 x (4 + y^2) - 
         y^2 (4 + y^2 + k^2))^2}, {x, -20, 20}, {y, -20, 20}], 
   Graphics[{Red, Line[#]} & /@ l, Axes -> True]]](*k为法线长度*)
f[1]
f[2]
f[5]
f[8]

f[k_, m_] := 
 Module[{}, 
  l = Table[{{y^2/4, y}, {y^2/4 + (2*k)/Sqrt[4 + y^2], 
      y - (y*k)/Sqrt[4 + y^2]}}, {y, -9, 9, 0.1}];
  Show[ContourPlot[{y^2 == 4 x, (y + (y*k)/Sqrt[4 + y^2])^2 == 
      4 (x - (2*k)/Sqrt[4 + y^2])}, {x, 0, 2 m}, {y, -m, m}], 
   Graphics[{Red, Line[#]} & /@ l, Axes -> True]]]
f[8, 10](*k为法线长度，m为图片的显示范围*)

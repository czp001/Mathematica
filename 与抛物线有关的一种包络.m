f[k_] := Module[{},
  l = Table[{{y^2/4, y}, {y^2/4 + (2*k)/Sqrt[4 + y^2], 
      y - (y*k)/Sqrt[4 + y^2]}}, {y, -9, 9, 0.1}];
  Show[Graphics[{Red, Line[#]} & /@ l, Axes -> True], 
   ContourPlot[{y^2 == 4 x, (y + (y*k)/Sqrt[4 + y^2])^2 == 
      4 (x - (2*k)/Sqrt[4 + y^2])}, {x, 0, 20}, {y, -10, 10}]]]
f[8]

f[k_] := Module[{}, 
  l = Table[{{y^2/4, y}, {y^2/4 + (2*k)/Sqrt[4 + y^2], 
      y - (y*k)/Sqrt[4 + y^2]}}, {y, -11, 11, 0.5}];
  Show[ContourPlot[Evaluate@{y^2 == 4 x}, {x, -2, 30}, {y, -18, 18}, 
    ContourStyle -> Blue], 
   ParametricPlot[{t^2/4 + (2 k)/Sqrt[4 + t^2], 
     t - (k*t)/Sqrt[4 + t^2]}, {t, -11, 11}, PlotStyle -> Green], 
   Graphics[{Red, Line[#]} & /@ l, Axes -> True]]]
f[8]
t1 = 2 Sqrt[-1 + 2 2^(1/3)];
c[t_] := y + t/2 (x - t^2/4) - t;
sol = {x, y} /. Solve[c[t] == 0 && D[c[t], t] == 0, {x, y}] // First
ParametricPlot[{sol, {t^2/4 + (2*8)/Sqrt[4 + t^2], 
   t - (8*t)/Sqrt[4 + t^2]}}, {t, -lim, lim}, 
 PlotRange -> {{0, 10}, {-5, 5}}, PlotStyle -> Red]
area = 2 Integrate[
    t^3/4 D[1/4 (8 + 3 t^2), t] + (t - (8*t)/Sqrt[4 + t^2]) D[
       t^2/4 + (2*8)/Sqrt[4 + t^2], t], {t, 0, t1}] // FullSimplify

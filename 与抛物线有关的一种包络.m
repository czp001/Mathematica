f[k_] := Module[{}, 
  l = Table[{{y^2/4, y}, {y^2/4 + (2*k)/Sqrt[4 + y^2], 
      y - (y*k)/Sqrt[4 + y^2]}}, {y, -11, 11, 0.5}];
  Show[ContourPlot[Evaluate@{y^2 == 4 x}, {x, -2, 30}, {y, -18, 18}, 
    ContourStyle -> Blue], 
   ParametricPlot[{t^2/4 + (2 k)/Sqrt[4 + t^2], 
     t - (k*t)/Sqrt[4 + t^2]}, {t, -11, 11}, PlotStyle -> Green], 
   Graphics[{Red, Line[#]} & /@ l, Axes -> True]]]
(*k为法线长度，若法线长度大于2，法线沿抛物线扫过，平面中会有一个区域被扫过3次，求该区域的面积*)
f[8]
t1 = 2 Sqrt[-1 + 2 2^(1/3)];
c[t_] := y + t/2 (x - t^2/4) - t;
sol = {x, y} /. Solve[c[t] == 0 && D[c[t], t] == 0, {x, y}] // 
  First(*求左侧包络线方程*)
ParametricPlot[{sol, {t^2/4 + (2*8)/Sqrt[4 + t^2],
    t - (8*t)/Sqrt[4 + t^2]}}, {t, -t1, t1}, 
 PlotRange -> {{0, 10}, {-5, 5}}, PlotStyle -> Red]
area = 2 Integrate[
    t^3/4 D[1/4 (8 + 3 t^2), t] + (t - (8*t)/Sqrt[4 + t^2]) D[
       t^2/4 + (2*8)/Sqrt[4 + t^2], t], {t, 0, t1}] // FullSimplify

(*代码1*)
a = DiskMatrix[1, 256]; Dynamic@
 Image[a = Rescale[a - GradientFilter[a, \[Pi]]]]
 
(*代码2*)
a = DiskMatrix[1, 256]; Dynamic@
 Image[a = Rescale[E - GradientFilter[a, \[Pi]]]]

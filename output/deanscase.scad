$fn=64;
difference(){union(){cube(size = [14, 7.300, 9.500]);
translate(v = [0, -0.650])
cube(size = [6.500, 8.600, 9.500]);
}
translate(v = [0, 0, 18.510])
mirror(v = [0, 0, 1])
union(){color("DarkRed"){union(){cube(size = [13.250, 7.300, 8.500]);
translate(v = [0, -0.650])
cube(size = [6.500, 8.600, 8.500]);
}
}
translate(v = [4.800, 0])
union(){translate(v = [0.200, 1.400])
rotate(a = [0, 0, 90])
translate(v = [0, 0, 8.500])
color("Goldenrod"){cube(size = [4.600, 2.600, 8.500]);
}
translate(v = [2.000, 2.500])
translate(v = [0, 0, 8.500])
color("Goldenrod"){cube(size = [4.600, 2.600, 8.500]);
}
}
}
}

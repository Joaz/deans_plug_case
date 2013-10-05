$fn=64;
difference(){union(){cube(size = [13.250, 7.300, 9.500]);
translate(v = [0, -0.650])
cube(size = [6.500, 8.600, 9.500]);
}
translate(v = [0, 0, 18.510])
mirror(v = [0, 0, 1])
union(){union(){color("DarkRed"){union(){cube(size = [13.250, 7.300, 8.500]);
translate(v = [0, -0.650])
cube(size = [6.500, 8.600, 8.500]);
}
}
translate(v = [2.800, 0])
rotate(a = [0, 0, 90])
translate(v = [0, 0, 8.500])
translate(v = [1.500, -1.300])
color("Brass"){cube(size = [4, 2.100, 8.500]);
}
}
translate(v = [6.300, 4])
translate(v = [0, 0, 8.500])
translate(v = [1.500, -1.300])
color("Brass"){cube(size = [4, 2.100, 8.500]);
}
}
}

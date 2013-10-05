class DeansCase < CrystalScad::Assembly
  def output
    res = cube([13.25,7.3,9.5])
    res += cube([6.5,8.6,9.5]).translate(y:-1.3/2)
    
    res -= DeansPlug.new.output.mirror(z:1).translate(z:18.51)
    
  end
  
end

class DeansPlug < CrystalScad::Assembly
  
  def show
    res = cube([13.25,7.3,8.5])
    res += cube([6.5,8.6,8.5]).translate(y:-1.3/2)
      
    res = res.color("DarkRed")
    
    res += pin.translate(z:8.5).rotate(z:90).translate(x:2.8)
    res += pin.translate(z:8.5).translate(x:2.8+3.5,y:4)
    
  end  
  
  def output
    show
  end
  
  def pin
    # a bit wider with springs, also 0.5 higher
    cube([4,2.1,8.5]).color("Brass").translate(x:1.5,y:-1.3)
  end 
  
end

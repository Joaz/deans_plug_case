class DeansPlug < CrystalScad::Assembly
  
  def show
    plug(true)
  end  
  
  def output
    plug(false)
  end

  def plug(show)
    res = cube([13.25,7.3,8.5])
    res += cube([6.5,8.6,8.5]).translate(y:-1.3/2)
      
    res = res.color("DarkRed")
    
    res+=pins(show).translate(x:4.8)
  
  end
  
  def pins(show)
    size = [4.0,2.2,8.0] if show == true
    size = [4.6,2.6,8.5] if show == false
    
    if show
      pins = pin(size).translate(z:8.5).rotate(z:90).translate(y:1.1+0.5)
      pins += pin(size).translate(z:8.5).translate(x:2.3,y:2.2+0.5)
    else
      pins = pin(size).translate(z:8.5).rotate(z:90).translate(x:0.2,y:1.1+0.5-0.2)
      pins += pin(size).translate(z:8.5).translate(x:2.5-0.5,y:2.2+0.3)      
    end 
        
    pins
  end
  
  def pin(size)
    cube(size).color("Goldenrod")
    
  end 
  
end

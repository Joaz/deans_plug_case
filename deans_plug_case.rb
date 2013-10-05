#!/usr/bin/ruby1.9.3

require "rubygems"
require "crystalscad"
require "require_all"

require_all "assemblies"

include CrystalScad

@@printed_color="Bisque"

#assembly = DeansPlug.new
assembly = DeansCase.new

subassembly = nil

def save(file,output,start_text=nil)
  file = File.open(file,"w")
  file.puts start_text unless start_text == nil
  file.puts output
  file.close
end

save("bom.txt",@@bom.output)
save(File.expand_path(__FILE__).gsub(".rb","")+".scad",assembly.scad_output,"$fn=64;") if assembly
save("part.scad",subassembly.scad_output,"$fn=64;") if subassembly

parts = [DeansCase]
unless Dir.exists?("output")
  Dir.mkdir("output")
end

parts.each do |part|
  name = part.to_s.downcase
  save("output/#{name}.scad",part.new.output.scad_output,"$fn=64;")
  if ARGV[0] == "build"
    puts "Building #{name}..."
    system("openscad -o output/#{name}.stl output/#{name}.scad")
  end

end

  
  




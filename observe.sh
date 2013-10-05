./bulldozer.rb > bulldozer.scad
while inotifywait -r -e close_write .; do ./deans_plug_case.rb; done

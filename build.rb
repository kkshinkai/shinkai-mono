#!/usr/bin/ruby

Dir["tests/*.ps"].each do |input|
  basename = File.basename(input, ".ps")
  system "gs -dBATCH -dNOPAUSE -sDEVICE=png16m " + \
         "-sFONTPATH=fonts " + \
         "-sOutputFile=images/#{basename}.png tests/#{basename}.ps"
end

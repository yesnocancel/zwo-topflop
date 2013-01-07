#!/usr/bin/env ruby
require 'mini_magick'   # Gem: tupalo-mini_magick

abort "Pfad zu Top- und Flopbild wird benoetigt!" unless ARGV.length == 2

ARGV.each do|a|
  abort "File not found: #{a}" unless File.exists?(a)
end

topimage = MiniMagick::Image.open(ARGV[0])
topimage.combine_options do |c|
  c.gravity("Center")
  c.crop("300x330+0+0")
  c.font("./whitrabt.ttf")
  c.pointsize("40")
  c.fill("#F93")
  c.draw("text 0,0 'TOP'")
end

flopimage = MiniMagick::Image.open(ARGV[1])
flopimage.combine_options do |c|
  c.gravity("Center")
  c.crop("300x330+0+0")
  c.font("./whitrabt.ttf")
  c.pointsize("40")
  c.fill("#F93")
  c.draw("text 0,0 'FLOP'")
end

resultimage = MiniMagick::Montage.new([topimage, flopimage], 'jpg', :geometry => "+0")
resultimage.write "output.jpg"
puts "Result written to output.jpg"
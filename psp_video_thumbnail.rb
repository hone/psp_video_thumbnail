#!/usr/bin/ruby

EXECUTABLE = 'ffmpeg'

# go through each file and process
$*.each do |file|
  # create output filename
  file_parts = file.split('.')
  file_parts.pop
  file_output = "#{file_parts.join('.')}.THM"

  system "#{EXECUTABLE} -i \"#{file}\" -f image2 -ss 5 -vframes 1 -r 1 -s 160x120 -an \"#{file_output}\""
end

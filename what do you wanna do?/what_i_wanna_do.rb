require 'pry'

file = File.open('./../../../../')
%x(cp #{file.path} ~/actual_file_name.mp4) 
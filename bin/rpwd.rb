#!/usr/bin/env ruby
# ------------------------------------------------------------------------ 
dir = ENV['PWD'].gsub(ENV['HOME'], '~').split('/')

pwd = dir.each.with_index.inject('') do |d,(el,i)|
  c = (i == (dir.count - 1)) ? el : el[0]
  d << c.to_s + '/'
end.byteslice(0..-2)

print pwd

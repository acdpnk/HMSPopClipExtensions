#!/usr/local/bin/ruby

input = ENV['POPCLIP_TEXT']
strikechar = "\u0336"
case ENV['POPCLIP_MODIFIER_FLAGS'].to_i
when 524288 # Option (CSS)
    output = input.gsub(strikechar, '')
    print output
else # none (HTML)
    # space = input.match(/^([\s\n]*)\S.*?([\s\n]*)$/m)
    # print "#{space[1]}<!-- #{input.strip} -->#{space[2]}"
    output = input.split('').join(strikechar) + strikechar
    print output
end

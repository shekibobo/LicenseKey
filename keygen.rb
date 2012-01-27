#!/usr/bin/env ruby

class Keygen
  def generate_key(string)
#    14 seconds
#    hcount = 1
#    a = string.each_char.to_a
#    a.each_index do |i|
#      if i > 0 && (i - (hcount - 1)) % (hcount * 5) == 0
#        a.insert(i, '-')
#        hcount += 1
#      end
#    end
#    a.join

#    2.8 seconds
    s = String.new(string)
    splits = s.length / 5 - 1
    splits.downto(1) { |i| s.insert(5 * i, '-') }
    s
  end
end

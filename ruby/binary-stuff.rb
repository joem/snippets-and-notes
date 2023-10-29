# display the bits in a number:
# 18.to_s(2)           #=> "10010"
# printf("%b\n", 18)   #=> "10010"

# use a binary literal:
# 0b11111111

# bitwise AND
# 18.to_s(2)           #=> "10010"
# 20.to_s(2)           #=> "10100"
# (18 & 20).to_s(2)    #=> "10000"

# bitwise OR
# 18.to_s(2)           #=> "10010"
# 20.to_s(2)           #=> "10100"
# (18 | 20).to_s(2)    #=> "10110"

# bitwise XOR
# (a = 18).to_s(2)     #=> "10010"
# (b = 20).to_s(2)     #=> "10100"
# (a ^ b).to_s(2)      #=>   "110" (leading zeros omitted)

# bitwise NOT
# 18.to_s(2)       #=> "10010"
# ~18              #=> -19
# (~18).to_s(2)    #=> "-10011"

# The Fixnum#[] method returns the bit at a given position in the binary representation of an integer with zero being the rightmost
# This means that we can loop over the positions and collect their corresponding bit value:
# 5.downto(0).map { |n| 18[n] }.join     #=> "010010"
# 5.downto(0).map { |n| -19[n] }.join    #=> "101101"

# Bitwise left and right shift
# 18.to_s(2)           #=>   "10010"
# (18 << 1).to_s(2)    #=>  "100100"
# (18 << 2).to_s(2)    #=> "1001000"
# (18 >> 1).to_s(2)    #=>    "1001"
# (18 >> 2).to_s(2)    #=>     "100"

def print_bin(number, bits = nil, sep = 4)
  binary = number.to_s(2)
  # byte_count = (binary.length / 8.0).ceil
  nibble_count = (binary.length / 4.0).ceil

  unless bits
    bits = nibble_count * 4
  end

  output = ""
  0.upto(bits - 1) do |n|
    if ((n % sep == 0) && (n != 0))
      output.prepend ' '
    end
    output.prepend number[n].to_s
  end
  return output
end

def print_byte(number)
  print_bin(number, 8, 4)
end

def print_int(number)
  print_bin(number, 16, 4)
end

def point_bit_in_byte(bit_number)
  result = print_bin(1 << (7 - bit_number), 8, 4)
  result = result.gsub('0', ' ')
  result = result.sub('1', '^')
end


# prng = Random.new
# prng.rand(255)   #  8-bit value
# prng.rand(65535) # 16-bit value

# some random bytes:
# 0b11110010
# 0b11111101
# 0b01100100
# 0b01110010
# 0b00011100
# 0b00010001
# 0b00110111
# 0b01101101
# 0b00101001
# 0b10010010
# 0b00111100

# 0.upto(20) do |i|
#   # puts i.to_s(2)
#   # puts print_bin(i)
#   # p print_bin(i, 3)
#   # p print_bin(i)
#   # p print_bin(i, 16, 8)
#   p print_bin(Random.new.rand(65535), 16, 8)
# end


def show_byte_math(first_num, op_symbol, second_num)
  case op_symbol
  when :&
    result = first_num & second_num
  when :|
    result = first_num | second_num
  when :^
    result = first_num ^ second_num
  end

  puts "  #{print_byte(first_num)}"
  puts "#{op_symbol.to_s} #{print_byte(second_num)}"
  puts "-----------"
  puts "  #{print_byte(result)}"
end

# 0.upto(7) do |i|
#   a = 0b00011100
#   b = 1 << i
#   # c = a & b
#   # puts "  #{print_byte(a)}"
#   # puts "& #{print_byte(b)}"
#   # puts "-----------"
#   # puts "  #{print_byte(c)}"
#   # puts
#   # show_byte_math(a, :&, b)
#   show_byte_math(a, :|, b)
#   puts
# end


# bit_number = amount % 8;
# mask = 1 << (7 - bit_number);
# *dst = (*dst & ~mask) | (*src & mask);

# # a simple test:
# bit_number = 1
# dst =  0b00000000
# src =  0b11111111
# mask = 1 << (7 - bit_number)
# masked_src = src & mask

# puts "dst =        #{print_byte(dst)}"
# puts "src =        #{print_byte(src)}"
# puts "mask =       #{print_byte(mask)}"
# puts "masked src = #{print_byte(masked_src)}"

# src =  0b11111111
# puts "src =  #{print_byte(src)}"
# puts "~src = #{print_byte(~src)}"

# # src =  0b11111111
# src =  0b01101101
# puts "src =        #{print_byte(src)}"

# 0.upto(7) do |i|
#   bit_number = i
#   mask = 1 << (7 - bit_number)
#   masked_src = src & mask
#   puts "masked src = #{print_byte(masked_src)}"
# end


# dst =  0b11111111
# # dst =  0b01101101
# puts "dst =        #{print_byte(dst)}"
# puts

# 0.upto(7) do |i|
#   bit_number = i
#   mask = 1 << (7 - bit_number)
#   masked_dst = dst & ~mask
#   puts "masked dst = #{print_byte(masked_dst)}"
#   puts "             #{point_bit_in_byte(bit_number)}"
# end

def highlight(strng)
  # "\e[31m#{strng}\e[0m" # red fg
  # "\e[32m#{strng}\e[0m" # green fg
  # "\e[33m#{strng}\e[0m" # brown fg
  "\e[34m#{strng}\e[0m" # blue fg
  # "\e[35m#{strng}\e[0m" # magenta fg
  # "\e[36m#{strng}\e[0m" # cyan fg
  # "\e[37m#{strng}\e[0m" # gray fg

  # "\e[41m#{strng}\e[0m" # red bg
  # "\e[42m#{strng}\e[0m" # green bg
  # "\e[43m#{strng}\e[0m" # brown bg
  # "\e[44m#{strng}\e[0m" # blue bg
  # "\e[45m#{strng}\e[0m" # magenta bg
  # "\e[46m#{strng}\e[0m" # cyan bg
  # "\e[47m#{strng}\e[0m" # gray bg

  # "\e[1m#{strng}\e[22m" # bold
  # "\e[3m#{strng}\e[23m" # italic
  # "\e[4m#{strng}\e[24m" # underline
  # "\e[7m#{strng}\e[27m" # reverse color
end

def highlight_bit_in_byte(byte, bit_number = -1)
  # `bit_number = -1` means no highlight
  result = ""
  0.upto(7) do |i|
    if i == bit_number
      result << highlight(byte[7-i].to_s)
    else
      result << byte[7-i].to_s
    end
    if (((i+1) % 4 == 0) && ((i+1) != 0))
      result << ' '
    end
  end
  return result
end

# puts highlight_bit_in_byte(0, 0)
# puts highlight_bit_in_byte(0, 1)
# puts highlight_bit_in_byte(0, 2)
# puts highlight_bit_in_byte(0, 3)
# puts highlight_bit_in_byte(0, 4)
# puts highlight_bit_in_byte(0, 5)
# puts highlight_bit_in_byte(0, 6)
# puts highlight_bit_in_byte(0, 7)

# puts

# dst = 0b00011100
# puts '0001 1100'

# puts highlight_bit_in_byte(dst, 0)
# puts highlight_bit_in_byte(dst, 1)
# puts highlight_bit_in_byte(dst, 2)
# puts highlight_bit_in_byte(dst, 3)
# puts highlight_bit_in_byte(dst, 4)
# puts highlight_bit_in_byte(dst, 5)
# puts highlight_bit_in_byte(dst, 6)
# puts highlight_bit_in_byte(dst, 7)
# puts highlight_bit_in_byte(dst, -1)


# src =  0b11111111
# dst =  0b00000000
src = 0b01110010
dst = 0b00011100
# 0b00010001
# 0b00110111
# 0b01101101
puts "src =    #{print_byte(src)}"
puts "dst =    #{print_byte(dst)}"

0.upto(7) do |i|
  bit_number = i
  mask = 1 << (7 - bit_number)
  masked_src = src & mask
  # puts "masked src = #{print_byte(masked_src)}"
  masked_dst = dst & ~mask
  # puts "masked dst = #{print_byte(masked_dst)}"
  result = masked_src | masked_dst
  puts "newdst = #{highlight_bit_in_byte(result, bit_number)}"
end




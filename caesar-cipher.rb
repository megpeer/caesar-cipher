# create a number/letter map

# input a message, and a key
string = 'What a string!'
shift = 2
puts "string is '#{string}'"
puts "shift key is #{shift}"
puts ''

def cipher(string, shift)
  # empty arrays
  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  # break down string into Array, and downcase
  string_array = string.downcase.chars

  # create array of the string ordinals (ord)
  for i in string_array
    ord_array.push(i.ord)

  end
  for i in ord_array
    # filter out non aplha chars and push ord into cipher_ord array any i not equal to a-z (> 97 || > 122) + do not mutate
    if i < 97 || i > 122
      cipher_ord_array.push(i)

    # wrap z to a if i  + shift > 122
    elsif i + shift > 122
      x = i + shift
      y = 122 - x
      cipher_ord_array.push(i + y)
      # if wrap not needed, push i
    else
      cipher_ord_array.push(i + shift)

    end
  end
# join the string back again
new_message = cipher_ord_array.map! { |number| number.chr}.join


  puts "string array is #{string_array}"
  puts "ord array is #{ord_array}"
  puts "cipher ord array is #{cipher_ord_array}"
  puts "coded string is #{new_message}"
end

cipher(string, shift)

class Caesar_cipher
# create a number/letter map
attr_accessor :string, :shift
  def initialize(string, num)
    # input a message, and a key
    @string = string
    @shift = num
    puts "string is '#{@string}'"
    puts "shift key is #{@shift}"
    puts ''
    string_to_arr(@string, @shift)
  end

  def string_to_arr(string, shift)
    string_array = []
    # break down string into Array, and force downcase
    string_array = string.downcase.chars
    arr_to_ord(string_array)
    string_array
  end

  def arr_to_ord(string_array)
    ord_array = []
    # create array of the string ordinals (ord)
    for i in string_array
      ord_array.push(i.ord)
    end
ord_array
    cipher(ord_array)
  end

  def cipher(ord_array)
    cipher_array = []
    for i in ord_array
      # filter out non aplha chars and push ord into cipher_ord array any i not equal to a-z (> 97 || > 122) + do not mutate
      if i < 97 || i > 122
        cipher_array.push(i)
      # wrap z to a if i  + shift > 122
      elsif i + shift > 122
        x = (-26 + shift) + i
        cipher_array.push(x)
        # if wrap not needed, push i
      else
        cipher_array.push(i + shift)
      end
    end
cipher_array
    output(cipher_array)
  end

  def output(cipher_array)
    new_message = cipher_array.map! { |number| number.chr}.join
        puts "coded string is #{new_message}"
    new_message
  end
end

# test = Caesar_cipher.new('hello! abcdefghijklmnopqrstuvwxyz', 1)


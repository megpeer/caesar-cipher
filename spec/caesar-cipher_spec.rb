require './lib/caesar-cipher'

describe Caesar_cipher do
  describe '#cipher' do
    context ' each character from a string is shifted a specific number of spots down the alphabet by 1.' do
      subject(:caesar_test) { described_class.new('hello! abcdefghijklmnopqrstuvwxyz', 1) }
      it 'makes an array from each char in string' do
        expect(caesar_test.string_to_arr('hello! abcdefghijklmnopqrstuvwxyz', 1)).to eq(["h", "e", "l", "l", "o", "!", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
      end

      it 'converts array of letters into unicode' do
        expect(caesar_test.arr_to_ord(["h", "e", "l", "l", "o", "!", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])).to eq([104, 101, 108, 108, 111, 33, 32, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122])
      end

      it 'unicode array gets shifted number' do
        expect(caesar_test.cipher([104, 101, 108, 108, 111, 33, 32, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122])).to eq([105, 102, 109, 109, 112, 33, 32, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 97])
      end

      it 'cipher puts array back together, successfully ignores pucntuation, and shifts z > a' do
        expect(caesar_test.output([105, 102, 109, 109, 112, 33, 32, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 97])).to eq('ifmmp! bcdefghijklmnopqrstuvwxyza')
      end



    end
  end
end
=begin

Input: String 
-Random assortment of letters
-Each word is capitalized for first/last name
-There may be words that include spaces/dashes, need to maintain those
-Each letter has been rotated 13 spaces 
Output: String
-Each letter needs to be shifted to the appropriate position
-Need to maintain the capitalized letters
-Need to maintain the spaces and dashes in appropriate position

Examples:
Nqn -> Ada Lovelace
[a b c d e f g h i j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z]
[0 1 2 3 4 5 6 7 8 9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25] <- index 
[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26] <- actual alphabet position
(index + 1 is the position)
N (14 + 13) (position + 13) = 27 (anything 27 and over, loop back to beginning) - 26 = 1 (A)
  (position = index + 1)....add 13 (shift) = final position (adjust for 27 and over) = position (subtract 1 to get the index)

Data Structure:
String for the input and output
Array for the alphabet and could be a hash with the keys for positions/letters as values

Algorithm:

-Break the string input into an array
-Iterate over the array
  -If the letter is not a letter (isnt in the alphabet), keep as is
  -Determine if its an uppercase (compare the letter to the letter uppercase)
    -return the 13th shifted letter(pass in the lowercase) and uppercase it
  -If its a lowercase letter
    -return the 13th shifted letter
-Join the array back together into a string

-Returning the 13th shifted letter
  -Create an alphabet in the array form 
  -Identify the current index of the letter and add 1 to get the position
  -Add 13 to the position
  -If the position is 27 or more, subtract 26
  -Subtract 1 from the position to get the index
  -Return the letter at the index just found
=end
require 'pry'
ALPHABET = ('a'..'z').to_a

def rotatedletter(char)
  position = ALPHABET.index(char) + 14
  position -= 26 if position >= 27
  ALPHABET[position - 1]
end

def rot13(input)
  name = input.chars.map do |letter|
           if !ALPHABET.include?(letter.downcase)
             letter
           elsif letter == letter.upcase
             rotatedletter(letter.downcase).upcase
           else
             rotatedletter(letter)
           end
         end
  name.join()
end

puts rot13('Nqn Ybirynpr') #== 'Ada Lovelace'
puts rot13('Tenpr Ubccre')
puts rot13('Nqryr Tbyqfgvar')
puts rot13('Nyna Ghevat')
puts rot13('Puneyrf Onoontr')
puts rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
puts rot13('Wbua Ngnanfbss')
puts rot13('Ybvf Unvog')
puts rot13('Pynhqr Funaaba')
puts rot13('Fgrir Wbof')
puts rot13('Ovyy Tngrf')
puts rot13('Gvz Orearef-Yrr')
puts rot13('Fgrir Jbmavnx')
puts rot13('Xbaenq Mhfr')
puts rot13('Fve Nagbal Ubner')
puts rot13('Zneiva Zvafxl')
puts rot13('Lhxvuveb Zngfhzbgb')
puts rot13('Unllvz Fybavzfxv')
puts rot13('Tregehqr Oynapu')
# TODO: Refactor all the duplication out of here. 
def bottlesOfBeer(number)
  while number >= 0
    if number == 0
      puts 'No more bottles of beer on the wall,'
      puts 'No more bottles of beer.'
      puts 'Go to the store and buy some more,'
      puts '99 bottles of beer on the wall!'
      number = number - 1
      
    elsif number == 1
      puts number.to_s + ' bottle of beer on the wall,'
      puts number.to_s + ' bottle of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts 'No more bottles of beer on the wall!'
      puts ''
      
    elsif number == 2
      puts number.to_s + ' bottles of beer on the wall,'
      puts number.to_s + ' bottles of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts number.to_s + ' bottle of beer on the wall!'
      puts ''
    
    else
      puts number.to_s + ' bottles of beer on the wall,'
      puts number.to_s + ' bottles of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts number.to_s + ' bottles of beer on the wall!'
      puts ''
    end
  end
end

def englishNumber(number)
  return 'Please enter a number greater than or equal to zero' if number < 0
  return 'Please enter a number less than or equal to 100' if number > 100
  
  return 'zero' if number == 0
  return 'one hundred' if number == 100
  
  numString = '' # eventual return value
  
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  array_index = number - 1
  
  numString = onesPlace[array_index] if number < 10
  numString = teenagers[array_index - 10] if number > 10 && number < 20
  numString = tensPlace[((number - (number % 10)) / 10) - 1] if number % 10 == 0
  numString = tensPlace[((number - (number % 10)) / 10) - 1] + '-' + onesPlace[array_index % 10] if number >= 20 && !(number % 10 == 0)
  
  numString
  
end

# TODO: Refactor all the duplication out of here. 
# TODO: Can I make one function that specifies an argument that 
#   says whether to print lyrics with numbers or English? 
def bottlesOfBeerEnglish(number)
  while number >= 0
    if number == 0
      puts 'No more bottles of beer on the wall,'
      puts 'No more bottles of beer.'
      puts 'Go to the store and buy some more,'
      puts englishNumber(99).capitalize + ' bottles of beer on the wall!'
      number = number - 1
      
    elsif number == 1
      puts englishNumber(number).capitalize + ' bottle of beer on the wall,'
      puts englishNumber(number).capitalize + ' bottle of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts 'No more bottles of beer on the wall!'
      puts ''
      
    elsif number == 2
      puts englishNumber(number).capitalize + ' bottles of beer on the wall,'
      puts englishNumber(number).capitalize + ' bottles of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts englishNumber(number).capitalize + ' bottle of beer on the wall!'
      puts ''
    
    else
      puts englishNumber(number).capitalize + ' bottles of beer on the wall,'
      puts englishNumber(number).capitalize + ' bottles of beer.'
      puts 'Take one down and pass it around'
      number = number - 1
      puts englishNumber(number).capitalize + ' bottles of beer on the wall!'
      puts ''
    end
  end
end

# bottlesOfBeer(99)
bottlesOfBeerEnglish(99)

# TODO: OMG put my test framework in a function! Then I could iterate easily over EVERY test case in this scenario!
# puts '-1 ' + (englishNumber(-1) == 'Please enter a number greater than or equal to zero').to_s
# puts '0 ' + (englishNumber(0) == 'zero').to_s
# puts '4 ' + (englishNumber(4) == 'four').to_s
# puts '10 ' + (englishNumber(10) == 'ten').to_s
# puts '11 ' + (englishNumber(11) == 'eleven').to_s
# puts '22 ' + (englishNumber(22) == 'twenty-two').to_s
# puts '30 ' + (englishNumber(30) == 'thirty').to_s
# puts '43 ' + (englishNumber(43) == 'forty-three').to_s
# puts '84 ' + (englishNumber(84) == 'eighty-four').to_s
# puts '97 ' + (englishNumber(97) == 'ninety-seven').to_s
# puts '102 ' + (englishNumber(102) == 'Please enter a number less than or equal to 100').to_s

# test output - puts all english numbers from 0 to 100, with the less-than and greater-than test cases
# (-1..101).to_a.each do |i|
#   puts englishNumber(i.to_i)
# end
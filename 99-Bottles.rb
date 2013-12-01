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
  #TODO
end

def bottlesOfBeerEnglish(number)
  #TODO
end

bottlesOfBeer(99)
class Fixnum

  ROMAN_NUMERAL_MAPPING = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" =>100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1

  }

  def to_roman
    arabic_number = self
    roman_number = ""

    ROMAN_NUMERAL_MAPPING.each {|roman, arabic|
      while arabic_number >= arabic
        arabic_number -= arabic
        roman_number << roman
      end
    }

    return roman_number
  end

end

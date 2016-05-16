class MoneyFormat
  def self.formatter(n)
    str_number = n.to_s
    char_index = 0

    str_number.each_char do |character|
      decimal_length = 3
      expected_rest = 1


       if char_index%decimal_length == expected_rest
         str_number.insert(char_index, ',')
       end

      char_index = char_index + 1
    end

    str_number
  end
end
BLK = {
        "B" => "O",
        "X" => "K",
        "D" => "Q",
        "C" => "P",
        "N" => "A",
        "G" => "T",
        "R" => "E",
        "F" => "S",
        "J" => "W",
        "H" => "U",
        "V" => "I",
        "L" => "Y",
        "Z" => "M"
      }

def block_word?(str)
  BLK.each do |key, value|
    return false if str =~ /#{key}/i && str =~ /#{value}/i ? true : false
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

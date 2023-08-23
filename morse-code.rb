# Morse Code Converter
# Morse Code Hash

def decode_char(stringChar)
  morse_code = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
    "-----" => "0",
  }
  return morse_code[stringChar]
end

def decode_word(stringWord)
  word = ""
  stringWord.split(" ").each do |char|
    word += decode_char(char)
  end
  return word
end

def decode(string)
  sentence = ""
  string.split("   ").each do |word|
    sentence += decode_word(word) + " "
  end
  return sentence
end

puts decode(".... . .-.. .-.. ---   .-- --- .-. .-.. -..")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

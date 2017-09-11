class Leetspeak
  def initialize(str)
    @str = str
  end

  def leetspeaker
    array = @str.split(" ")
    (0..array.length-1).each do |j|
      word = array[j]
      for i in 0..word.length-1 do
        if word[i] == 'e'
          word[i] = '3'
        elsif word[i] == 'o'
          word[i] = '0'
        elsif word[i] == 'I'
          word[i] = '1'
        elsif word[i] == 's' && i != 0
          word[i] = 'z'
        end
      end
    end
    array.join(" ")
  end
end

#write your code here

$vowels = ["a", "e", "i", "o", "u"]
$pigExtension = "ay"

def vowel?(char)
  $vowels.include?(char)
end

def endConsonants(str)
  (str.length).times do |i|
    if vowel?(str[i]) and str[i - 1..i] != "qu"
      if i > 0
        return str[i..-1] + str[0..i - 1]
      else
        return str
      end
    end
  end
end

def translate(str)
  strWords = str.split
  pigStrWords = []
  strWords.each do |word|
    pigStrWords.push(endConsonants(word).to_s + $pigExtension)
  end
  pigStrWords.join(" ")
end

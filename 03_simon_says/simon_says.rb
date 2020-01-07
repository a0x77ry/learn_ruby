#write your code here

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  (str + " ") * (n - 1) + str
end

def start_of_word(str, n)
  str[0..n-1]
end

def first_word(str)
  str.split[0]
end

$littleWords = ["a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "over"]

def titleize(str)
  strArray = str.split
  titleArray = []
  strArray.each_with_index do |item, i|
    if $littleWords.include?(item) == false or i == 0
      titleArray.push(item.capitalize)
    else
      titleArray.push(item)
    end
  end
  titleArray.join(" ")
end

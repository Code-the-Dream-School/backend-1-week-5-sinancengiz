#write your code here
def translate(word)
    word_list = word.split(" ")
    def trans_a_word(word)
        puts word[0].downcase
        vowels = ['a', 'e', 'i', 'o', 'u']
        if vowels.include?(word[0].downcase) == true
            word += "ay"
        elsif word[1].downcase == "q" and word[2].downcase == "u"
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += "ay"
        elsif word[0].downcase == "q" and word[1].downcase == "u"
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += "ay"
        elsif vowels.include?(word[0].downcase) != true and vowels.include?(word[1].downcase) != true and vowels.include?(word[2].downcase) != true
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += "ay"
        elsif vowels.include?(word[0].downcase) != true and vowels.include?(word[1].downcase) != true
            word += word[0]
            word = word[1..word.length]
            word += word[0]
            word = word[1..word.length]
            word += "ay"
        else
            word += word[0]
            word = word[1..word.length]
            word += "ay"
        end
        return word
    end

    result = ""
    word_list.each do |w| 
        result += trans_a_word(w)
        result += " "
    end
    result = result[0..result.length-2]
    return result
end

puts translate("cheery")
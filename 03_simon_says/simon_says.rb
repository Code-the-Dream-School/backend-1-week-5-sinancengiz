#write your code here


def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num=2 )
    result = word
    i = 1
    while i < num do
        result += " " + word 
        i +=1
    end 
    return result
end

def start_of_word(word, num)
    return word[0..num-1]
end


def first_word(word)

    result = word.split(' ')


    return result[0]
end

def titleize(word)

    little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
    result =  word.split(" ").map {|word| 
    if little_words.include? word
        word
    else
    word.capitalize
    end
    }.join(" ")
    result[0] = result[0].capitalize
    return result
end
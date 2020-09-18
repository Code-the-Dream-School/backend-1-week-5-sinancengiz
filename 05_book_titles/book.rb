
class Book
# write your code here
    attr_accessor :title
    def initilize(title = "")
        @title = title 
    end
    def title
        little_words = ["and", "or", "the", "over","an", "to", "the", "a", "but","above", "across", "against", "along", "among", "around", "at", "before", "behind", "below", "beneath", "beside", "between", "by", "down", "from", "in", "into", "near", "of", "off", "on", "to", "toward", "under", "upon", "with" , "within"]
        result =  @title.split(" ").map {|word| 
        if little_words.include? word
            word
        else
        word.capitalize
        end
        }.join(" ")
        result[0] = result[0].capitalize
        return result
    end
end


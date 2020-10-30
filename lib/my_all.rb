require 'pry'

def my_all?(collection)
    i = 0
    block_return_values= [] #array to save return value of the yield block
    while i < collection.length
        block_return_values << yield(collection[i])
        i= i + 1 #i+= does the same thing.Use this if its easier for you. 
    end
    if block_return_values.include?(false)
        false
        else
        true


    end

end
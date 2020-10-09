#QUESTION_1)

# nil

# irb(main):001:1* if false 
#   irb(main):002:1*   greeting = "hello world"
#   irb(main):003:0> end 
#   => nil
#   irb(main):004:0> greeting
#   => nil

# What is evaluated to true

# irb(main):005:1* if true 
#   irb(main):006:1*   greeting = "hello world"
#   irb(main):007:0> end 
#   => "hello world"
#   irb(main):008:0> greeting
#   => "hello world"


#---------------------------------------------------
#QUESTION_2)

# greetings = { a: 'hi there' }

# informal_greeting references original object assigned to greetings.
# when the shovel method is used to modify informal greetings to "hi there"
# this in turn modifies greetings as well. 

# avoid?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]

# informal_greeting = informal_greeting + " there"
# or 
#  informal_greeting += ' there'

# puts informal_greeting      #  => "hi there"
# puts greetings    #=> { a: 'hi' }

#---------------------------------------------------
#QUESTION_3)


#A)

# => "one is: one"
# => "two is: two"
# => "three is: three"

#B)

# => "one is: one"
# => "two is: two"
# => "three is: three"

#C)

# => "one is: two"
# => "two is: three"
# => "three is: one"

#---------------------------------------------------
#QUESTION_4)

#  if string is an ip address, representing dot separated numbers?
#   dot_separated_words = input_string.split(".") => This will split each character in input_string.
#   not returning a false condition?
#   not handling a case where there are more or less than 4 components to the ip. (e.g 1.2.3 or 1.2.3.4.4 would be an invalid ip)

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.size == 4

#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end

#   true
# end

#note: not super solid on this one. 




  
 





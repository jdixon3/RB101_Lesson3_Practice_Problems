

# ANSWER QUESTION 1)
# 1
# 2
# 2
# 3

# =begin) ANSWER CONTINUED QUESTION 1) numbers remains the same because the call to uniq does not mutate\ 
# the local variable.  Therefore/local variable numbers is still [1, 2, 2, 3].  Keep in mind\
# puts calls to_s on the argument, so thats whay the output is four seperate lines.

# Additonally, if you call p on numbers, the output would be [1, 2, 2, 3] because\
# p calls .inspect on the argument.
# =end
#--------------------------------------------------------------------------------------------------------
# =begin ANSWER QUESTION 2) If you see ! or ? at the end of a method, thats actually part of the method\
# name and not ruby syntax.  Therefore you dont really know what the method is\
# doing even if it ends in those characters.  The other uses are actually ruby\
# syntax.

# QUESTION 2 CONTINUED)
# 1. (!=)   this syntax is equivlent to not equal.  double bang is a boolean eqivalent
#           check if operands or variables are equal or not equal
#           ex a = 1,   b = 2
#           a == b #false
#           a != b #true

# 2.  if you put the bang before a variable, the variable is mutated to equal false

# 3.  if the single bang proceeds a method call, this mutates the return.

# 4.  The ? is a ternary operator, used like this.  
#  => conditional statment ? if true =>outcome_1 : else false => outcome_2_

#     using the ternary operator is shorthand for an if else statement that has two outcomes.

# 5. samne as question 4

# 6. ! - !!. a single bang before the object ex !<some object> is used to turn the object into a boolean\
# OPPOSITE of their equivalent.  !!<some_object> will turn an object into the boolean EQUIVALENT.
# =end 
#----------------------------------------
# #ANSWER QUESTION 3)
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice
# puts advice.gsub!('important', 'urgent')
#----------------------------------------
#ANSWER QUESTION 4)
#numbers = [1, 2, 3, 4, 5]

#numbers.delete_at(1) will delete the value at index 1, which is 2
#numbers.delete(1) will delete the value 1 in index 0.

# puts numbers.delete_at(1)  => 2
# puts numbers.delete(1)     => 1
#---------------------------------------
#ANSWER QUESTION 5)
# puts (10..100).include?(42)  => true
# puts (10..100).cover?(42)    => true
#---------------------------------------
# ANSWER QUESTION 6)
# famous_words = "seven years ago..."

# "four score and " << famous_words  
# "four score and " + famous_words   
#  famous_words.prepend("four score and ") 
#----------------------------------------
#ANSWER QUESTION 7)
# flintstones = %w(fred wilma)
# flintstones << %w(barney betty)
# flintstones << %w(bambam pebbles)

# p flintstones.flatten
#---------------------------------------

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# p flintstones.to_a[2]
# p flintstones.assoc("Barney")













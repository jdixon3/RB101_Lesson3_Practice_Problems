
#QUESTION_1)

# string = "The Flintstones Rock!"
# 10.times{ |number| puts (" " * number) + string }
#---------------------------------------------------
#QUESTION_2)

#The program is attempting to convert integers into a string 

# puts "the value of 40 + 2 is " + (40 + 2).to_s
# puts "the value of 40 + 2 is #{40 + 2}."
# puts "the value of 40 + 2 is " << (40 + 2).to_s
#---------------------------------------------------
#QUESTION_3)

# def factors(number)
#   divisor = number
#   ints = []
#   while divisor > 0 do 
#     ints << number / divisor if number % divisor == 0
#     divisor -= 1
#   end 
#   ints
# end

# p factors(25)

#BONUS_1)
#number % divisor == 0 
#the modulo operator is the key block to this method.  if number/divisor == zero (no remainder) it is a factor.

#BONUS_2)
#Becuase it is the last line in the method, that is what is output.  In this case it is our list of factors. 
#---------------------------------------------------
#QUESTION_4)

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# the return value is the same, but there is a difference. 

#In rolling_buffer1 the argument buffer is returned and is different from original.  
#in rolling_buffer2 input_array is the initial argument and buffer is\
#equal to input_array + [new_element], therfore when returned nothing\
#has altered the input_array argument.
#---------------------------------------------------
#QUESTION_5)

# ben defines limit variable outside the method def, therfore limit\
# is not visible inside the method scope. You can make limit an\
# additional argument or define it inside the method.

# def fib(first_num, second_num)
#   limit = 100
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end 

# puts "The highest fib # is #{fib(10,11)}."

# limit = 100

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end 

# puts "The highest fib # is #{fib(10,11, limit)}."
#---------------------------------------------------
#QUESTION_6)

#34
#---------------------------------------------------
#QUESTION_7)

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# puts munsters.object_id

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)
# puts munsters.object_id

#yes, the munster's hash was altered after entering munsters as an argument for the\
#mess_with_demographics method.  The hash object that is being altered in the method\
#is the munsters hash therefore it is not reassigned.
#---------------------------------------------------
#QUESTION_8)

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# #The result of the following call is paper.  
# #starting from the intermost call working out is as follows
#  inermost =  paper vs rock => paper
#  next = rock vs scissors => rock
#  next = paper vs rock => paper 
#---------------------------------------------------
#QUESTION_9)

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)


=> "no"


#foo returns "yes", foo passed into bar as an argument will be false, which returns "no"

create medium 2 file and continue










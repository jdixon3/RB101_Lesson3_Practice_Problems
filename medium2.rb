#QUESTION_1)

# fun_with_ids
# ---------output and explanation-----------

# a_outer is 42 with an id of: 85 before the block.
# b_outer is forty two with an id of: 60 before the block.
# c_outer is [42] with an id of: 80 before the block.
# d_outer is 42 with an id of: 85 before the block.

# explanation => Local variables assigned to values have object id's.  Ruby did reuse the object id's for different variables with the same value

# a_outer id was 85 before the block and is: 85 inside the block.
# b_outer id was 60 before the block and is: 60 inside the block.
# c_outer id was 80 before the block and is: 80 inside the block.
# d_outer id was 85 before the block and is: 85 inside the block.

# explanation => After we call .times in the method, we see the object id's are the same.  Even though the new block 
# does technically establish a new scope. 

# a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
# b_outer inside after reassignment is thirty three with an id of: 60 before and: 100 after.
# c_outer inside after reassignment is [44] with an id of: 80 before and: 120 after.
# d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

# explanation) Here we are changing the VALUE of the variables through reassignment.  This will create new object_id's. for the variables. 

# a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
# b_inner is thirty three with an id of: 100 inside the block (compared to 100 for outer).
# c_inner is [44] with an id of: 120 inside the block (compared to 120 for outer).
# d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).

# explanation) Ruby reuses the object id's for variables with the SAME VALUE. 

# a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
# b_outer is thirty three with an id of: 60 BEFORE and: 100 AFTER the block.
# c_outer is [44] with an id of: 80 BEFORE and: 120 AFTER the block.
# d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.

# explanation) When we leave the block, Ruby seems to keep the oject id's for the variables established outside the block
#              ,but for the varibles initialzed inside the block the same cannot be said. As seen below, with a rescue. 

# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh

#----------------------------------------
#QUESTION_2_ANSWER)

#everything in question 2 is the same as question 1 except for, the values being accepted as arguments.  The name\
#we give to the values in the method def are SEPARATE from any other use of the same name. 
#still slightly confused here.....
#----------------------------------------
#QUESTION_3_ANSWER)

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"

#   puts "a_string_param object_id is: #{a_string_param.object_id}."
#   puts "an_array_param object_id is: #{an_array_param.object_id}."
# end

# my_string = "pumpkins" 
# my_array = ["pumpkins"] 

# puts "my_string object_id is: #{my_string.object_id}."
# puts "my_array object_id is: #{my_array.object_id}."

# tricky_method(my_string, my_array)

# puts "my_string object_id is: #{my_string.object_id}."
# puts "my_array object_id is: #{my_array.object_id}."

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# output:
# => my_string object_id is: 60.
# => my_array object_id is: 80.
# => a_string_param object_id is: 100. (my_string inside the method has a dif object_id)
# => an_array_param object_id is: 80.
# => my_string object_id is: 60.
# => my_array object_id is: 80.
# => My string looks like this now: pumpkins
# => My array looks like this now: ["pumpkins", "rutabaga"]

# ******The important distinction is that while a reference is passed, the method initializes
#  a new local variable for both the string and the array and assigns each reference to the new local variables.
# These are variables that only live within the scope of the method definition.********

# *****The String += operation is re-assignment and creates a new String object*****

# ***If we use the shovel operator to pass rutabaga for my_string_param, notice the same object_id is carried throughout. ****

#----------------------------------------
#QUESTION_4_ANSWER)

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
#   puts an_array_param.object_id
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# puts my_array.object_id
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# #With the Array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a new object,\
# #and we are assigning it to the local variable an_array_param. As we can see below.

# an_array_param.object_id = 60
# my_array.object_id = 80
#----------------------------------------
#QUESTION_5_ANSWER)

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param

# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# puts my_string.object_id
# puts my_array.object_id
# my_string, my_array = not_so_tricky_method(my_string, my_array)
# puts my_string.object_id
# puts my_array.object_id

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# => 60
# => 80
# => 100
# => 120
# => My string looks like this now: pumpkinsrutabaga
# => My array looks like this now: ["pumpkins", "rutabaga"]

# REFACTORING ALLOWS FOR EASY READABLE CODE, THATS EASY TO DEBUG AND MODIFY AS REQUREMENTS CHANGE. 
#----------------------------------------
#QUESTION_6_ANSWER)


def color_valid(color)
  color == "blue" || color == "green"
end

#Ruby automatically evaluates statments so the if, else\
#written out looks complex and isn't nearly as readable as the above code. 
  
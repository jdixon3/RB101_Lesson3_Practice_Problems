#QUESTION_1)

fun_with_ids
---------output and explanation-----------

a_outer is 42 with an id of: 85 before the block.
b_outer is forty two with an id of: 60 before the block.
c_outer is [42] with an id of: 80 before the block.
d_outer is 42 with an id of: 85 before the block.

explanation => Standard local variable assigned to values have object id's.  Ruby did reuse the object id's for different variables with the same value

a_outer id was 85 before the block and is: 85 inside the block.
b_outer id was 60 before the block and is: 60 inside the block.
c_outer id was 80 before the block and is: 80 inside the block.
d_outer id was 85 before the block and is: 85 inside the block.

explanation => After we call .times in the method, we see the object id's are the same.  Even though the new block 
does technically establish a new scope. 

a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
b_outer inside after reassignment is thirty three with an id of: 60 before and: 100 after.
c_outer inside after reassignment is [44] with an id of: 80 before and: 120 after.
d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

explanation) Here we are changing the value of the variables through reassignment.  This will create new object_id's. for the variables. 

a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
b_inner is thirty three with an id of: 100 inside the block (compared to 100 for outer).
c_inner is [44] with an id of: 120 inside the block (compared to 120 for outer).
d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).

explanation) Ruby reuses the object id's for variables with the same value. 

a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
b_outer is thirty three with an id of: 60 BEFORE and: 100 AFTER the block.
c_outer is [44] with an id of: 80 BEFORE and: 120 AFTER the block.
d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.

explanation) When we leave the block, Ruby seems to keep the oject id's for the variables established outside the block
             ,but for the varibles initialzed inside the block the same cannot be said. As seen below, with a rescue. 

ugh ohhhhh
ugh ohhhhh
ugh ohhhhh
ugh ohhhhh

#----------------------------------------
#QUESTION_2_ANSWER)





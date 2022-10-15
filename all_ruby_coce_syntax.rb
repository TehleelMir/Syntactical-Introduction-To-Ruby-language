# single line like this, it starts with a hash symbol 

=begin 

multi-line liks
this, weird i know. 
it starts with =begin and ends with (= end) <- without space

=end


puts "------------------"



puts "kanye west"
print "is a bitch" 
puts "\n"

# and to add variables in the print/put 
# we also have to ways 

theyCallMeStringVaraible = "you are god damn right"

# 1. 
puts "they say kanye west is a bitch " + theyCallMeStringVaraible 

# 2. 
puts "they say kanye west is a bitch #{theyCallMeStringVaraible}"




puts "----------------"

#Local 
xyz = "this is a string"
xyz = 12
xyz = "we can do this because its dynamically typed"

grade = 3.5 		# double/float
age = 23			# integer
isAlive = false 	# boolean
name = "abi baba"	# string 


#Instance and class variables (i know we haven't reached the class syntax yet, but bitch you are a developer take it in, until you reach there.)
class SomeClassName
	@@classVariables = 43242
	def initialize()
		@instanceVariable = 222
	end
end 

object = SomeClassName.new
puts object.instance_variable_get(:@instanceVariable)


#Constant 
WithDueRespect = "im a constant"


#global 
$allOverTheWorld = 0



puts "------------------"


# casting and converting of data types 

# Integer 
puts 3.14.to_i 
# or 
num = 3.14 
puts num.to_i


# Float 
puts 3.to_f 


# String 
puts 33.to_s


puts 100 + "50".to_i		# it wil print 150
puts 100 + "50.99".to_f 	# it will print 150.99



puts "---------------"


imAString = "string string ring.."

imAString.length				# if you don't know what this will do, please close this article 
imAString[0]					# will return character on that index
imAString.include? "string"		# will check for sub-string and return true if it exists 
imAString[0, 5]					# will return the sub-string between provided indexes 

# and there are many more methods that we can use on a string




puts "-------------------"

puts 3 * 2 # multiplication 

puts 2 ** 2 #exponent i.e. 2 to the power of 2 

puts 1 + 2 * 3 #order of operation as per BODMAS

puts 10 / 3.0 #reuslt will be in double/float 

num2 = 10
num2 += 20
puts num2 # will print 30 


# There is also a Math class in ruby 
puts Math.sqrt(num2)
puts Math.log(0)



puts "----------------------"

puts "what my name"
name = gets 
puts "you are god damn right, #{name}"

puts "How much cash do you have with you?"
cash = gets.chomp

puts "#{cash}, its not enough, here take some of mine as well"
myCash = 100 

newCash = myCash + cash.to_i #remember everthing from console will be string 

puts newCash


puts "-----------------------------"



# to create an empty array 
empty_array = []

# to create an array with values already added in it
not_empty_array = [1, 1.0, true, "string", 0, 3] # as i said we can have arrays with different data items

# push will add an item at the end of the array 
not_empty_array.push("hello")

# pop will remove an item at the end of the array
not_empty_array.pop

# to create a two array 
two_d_array = [
	[1, 2],
	[2, 3]
]

# to look for an item in the array, it will return boolean value 
not_empty_array.include? "baba yaiga"

# to reverse an array, it will return the reversed array it won't affect the 
# actually array on which the method was called 
reverse_array = not_empty_array.reverse 


# to get the subarray from an array 
puts not_empty_array[0, 3] # from index 0 to 3 return new array 
#or 
puts not_empty_array[0..3] # from index 0 to 4 return new array  

# to get the length of an array
puts not_empty_array.length


# negative index, when we pass negative index in array in ruby
# it will return the value from the end of the list, e.g. if we 
# pass [-1] it will return the last item, or if we pass [-2] it
# will return second last. But what if we pass the index which 
# does not exist in the array, it will return nothing  
puts not_empty_array[-1] 

# there are more methods than these, which you can look online 



puts "-------------------"



# to define a simple method 
def method_name
	puts "John Cena: you can't see me"
	puts "rock: Believe me, we all can see you" 
end 

# to call a method 
method_name


###############################


# method with params 
def method_with_param(name) 
	puts "your name is #{name}"
end

# to call a method 
method_with_param("Jackie Chan") 
# or 
method_with_param "John Chan"


################################



# method with default values
def method_with_default_values(name, age, isAlive = true)
	puts "#{name} -> #{age} -> #{isAlive}"
end

#to call a method 
method_with_default_values("joy", -12, false)
#or 
method_with_default_values("roy", 12)
#or 
method_with_default_values "boy", 25, true
#or
method_with_default_values "soy", -25


######################################



# method with multiple returns, as said 
# by default any method will return its 
# the last line statement by default even 
# when we don't add the return keyword 
# to it. 

def method12 
	32
end

puts method12 # it will print 32



# multiple returns 
def method13 
	return 1, 2, true # basically it will return an array 
end

puts method13


#########################################


# method with variable number of parameters, 
# that is we can pass n number of arguments 
# and method will take them as an array 
def method14 (*varArugs)
	puts varArugs[0]
	puts varArugs[1]
end

method14(33, 33333)


#######################################


# methods in a class 

class SomeClassName2
	def sayHello
		puts "hello"
	end 

	def SomeClassName2.saySomething
		puts "say something"
	end 
end

# see how the second method saySomething
# is declared with the class name followed by a period and
# is followed by a method name. We can access this method 
# directly without creating an object of the class 

# calling 
SomeClassName2.saySomething

classObject = SomeClassName2.new 
classObject.sayHello
# classObject.saySomething # this will give error 




puts "---------------"




# if else statement 

num10 = 10
numN = 3
num1000 = 1000

if num10 < numN
	puts "hello"
elsif num10 == num1000 and numN < num10 or num1000 > numN 
	puts "mello"
else
	puts "yello"
end 




# switch case 

case num10 
	when 1 
		puts "1"
	when 10 
		puts "10"
	else 
		puts "0"
end 


puts "-------------------------"



# Dictionary/Map

map = {
	"key1" => "value1",
	"key2" => "value1",
	"key3" => "value33",
	3 => "value12",
	3.2 => true
}

puts map["key1"]
puts map[3]





puts "----------------------"

# while loop
index = 1
while index <= 10 
	puts index
	index += 1
end 


######################################


# for loop, the below loop will run from 0 to 20 (it will print 20 as well)
for value in 0..20
	puts value
end 


######################################


# for each loop for arrays 
test_array = [1,2,3,3,3,3,3,3,3,3,]
test_array.each do |value|
	puts value 
end

# another way of for each loop
for value in test_array
	puts value
end 



#########################################

# the weird one 

5.times do |value|
	puts value
end


puts "------------------------"


# simple exception handling 
begin 
	num = 10 / 0
	puts "they say im never going to be printed :'("
rescue 
	puts "we have caught the error"
end 



# multiple exception handling 
begin 
	num = 10 / 0
rescue ZeroDivisionError
	puts "you can not divide 10 by 0"
rescue
	puts "this block can handle other exceptions"
end 


# to throw your own exception 
begin 
	raise "my exception"
rescue
	puts "............."
end 





puts "-----------------------"



# simple class 
class House  

end 

# to create an object of a class 

house1 = House.new 



#######################################


# class with contractor 
class Paper 
	def initialize(paperColor)
		puts paperColor
	end 
end

paper1 = Paper.new("yellow")


########################################



# class with attributes 
class Phone
	attr_accessor :color, :brand 

	def readPhoneProperties
		puts "color = #{self.color} and brand = #{self.brand}" #self points to the object on which it has been called. 
															   # or in other words self is a special variable 
															   # that points to the object that "owns" the currently executing code
	end
end

pixel = Phone.new 
pixel.color = "red"
pixel.brand = "google"
pixel.readPhoneProperties


#########################################


# in Heritance 

class Google < Phone
end 

googlePhone = Google.new
googlePhone.color = "red"
googlePhone.brand = "google"
googlePhone.readPhoneProperties



############################################


# to define instance and class variables 

class Cup 
	def initialize(color)
		@color = color 
	end 
end 

cup1 = Cup.new("brown")
cupColor = cup1.instance_variable_get(:@color) 
puts cupColor



puts "----------------------------"

symbolVariable = :symbol_here

puts symbolVariable























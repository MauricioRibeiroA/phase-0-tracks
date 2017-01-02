#Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.
#Write driver code that tests all four operations and prints the results.


p "Which method would you like to use?"
userAnswer = gets.chomp 
x = 10
y = 5

# multiplyng two parameters (x, y)
def mult(x, op, y)
  x.send(op, y)
end

mult(x, :*, 5)

# sum of two parameters (x, y)
def sum(x, op, y)
  x.send(op, y)
end

sum(4, :+, 5)

#subtracting two parameters (x, y)
def sub(x, op, y)
  x.send(op, y)
end

sub(3, :-, 5)

#dividing two parameters (x, y)
def div(x, op, y)
  x.send(op, y)
end

div(10, :/, 5)


if userAnswer == "sum"
  sum(x, :+, y)
  elsif userAnswer == "sub"
  sub(x, :-, y)
  elsif userAnswer == "mult"
  mult(x, :*, y)
  elsif userAnswer == "div"
  div(x, :/, y)
  
end
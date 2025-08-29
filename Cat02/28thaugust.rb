#lambdas in ruby

squares_lambda=lambda{|num| num**2}
squares_proc=Proc.new{|num| num**2}
p [1,2,3].map(&squares_proc)
p squares_proc.call(5)

p [1,2,3].map(&squares_lambda)
p squares_lambda.call(5)

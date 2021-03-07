# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# The keyword proc can be used instead of Proc.new. A proc is an object of the class
# Proc. A proc does not require the correct number of arguments to be passed to it.
# Excess arguments are fine, and parameters not supplied with an argument are assigned to nil.

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = ->(thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Lambdas are objects of the Proc class as well. Lambdas are created with the 
# keyword lambda. Lamda.new will not work because Lambda is not a class. There is also a notation of
# ->(parameter) before the block used to define it. Lambdas will throw an error if not provided with the
# correct number of arguments.

# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}." }
# block_method_1('seal')

# A block does not require the correct number of arguments. If yield is called with fewer arguemnts
# than the block definition, parameters will be assigned nil. Calling yield with no block parameter
# casues an error.

# Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}." }
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}." }

# Blocks and default procs have the same arity rules. A proc is an object used
# to save and pass around blocks.

# A lambda is not a class but rather a variation of the class Proc. Lamdas have more
# restrictive arity. A lambda must be called with the correct number of arguments.

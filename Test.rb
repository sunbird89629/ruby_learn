# def hello
#   puts 'Hello World'
# end
#
#
# alias original_hello_ hello
#
# def hello
#   puts "Your attention please"
# end


# def test(a, b, c, d=11, e=12, f=13, *g)
#   p a
#   p b
#   p c
#   p d
#   p e
#   p f
#
#   p g
# end
#
#
# test(1, 2, 3, 4, 5, 6, 7, 8, 9)

# a, b = [1, 2, 3], [4, 5]
#
# summation = Proc.new { |total, x| total+x }
#
# p sum = a.inject(0, &summation)
# p sum = b.inject(sum, &summation)


# words = ['and', 'but', 'car']
# uppercase = words.map &:upcase
#
# p uppercase


# def makeproc(&b)
#   p b.class
#   b
# end
#
# addr = makeproc { |x, y| x+y }
#
# sum = addr.call(1, 2)
#
# p sum

# p = Proc.new { | x, y| x+y }
#
# sum = p.call(1, 2)
#
# p sum


# lam = lambda { |x| puts x}
#
# lam.call(1,2,3)


# proc = Proc.new { |x| puts x }
#
# # proc.call
#
# proc.call(1,2,3)


# def lambda_test
#   lam = lambda { return }
#   lam.call
#   puts "Hello world"
# end
#
# lambda_test


# def proc_test
#   proc=Proc.new { return }
#   proc.call
#   puts "Hello world"
# end


# succ1= lambda { |x| x+1 }
# p succ1.class
# succ2=->(x) { x+1 }
# p succ2.class

# f = ->(x, y; i, j, k) {
#
#     i=3
#     j=4
#     k=5
#
#     p x
#     p y
#     p i
#     p j
#     p k
# }
#
# f.call 1,2

# zoom=->(x, y, factory = 2) { [x*factory, y*factory] }
#
# p zoom.call 1, 2, 3

# def compose(f, g)
#   ->(x) { f.call(g.call(x)) }
# end
#
# succOfSquare = compose(-> x { x+1 }, -> x { x*x })
#
# def test_call
#   yield 4
# end
#
# # p succOfSquare.class
#
# # p &succOfSquare
#
# # p succOfSquare.call(4)
#
# p test_call &succOfSquare

# data.sort { |x, b| b - a }
# data.sort &-> (x, b) { b - a }

# a = *['a', 'b', 'c']
# p a.class

# print ['a', 'b', 'c']
# print *['a', 'b', 'c']

# a = [1, 2, 3, 4, 5, 6]
# a[3,2] = [444,555,666,777]

# p a[3, 3]

# (0...3).each do |x|
#   p x
# end

# p lambda {|*x|}.arity

class User < ActiveRecord::Base

end





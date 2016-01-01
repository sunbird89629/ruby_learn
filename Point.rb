class Point

  include Enumerable
  include Comparable

  # attr_accessor :x, :y;

  def initialize(x, y)
    @x=x;
    @y=y;
  end

  def +(other)

  end

  def -

  end

  def *

  end

  def []

  end


  def coerce(other)

  end

  def each
    yield @x
    yield @y
  end

  alias eql? ==

  # def ==(o)
  #   if o.is_a? Point
  #     @x==o.x && @y==o.y
  #   else
  #     false
  #   end
  # end

  def add!(other)
    @x+=other.x
    @y+=other.y
  end

  def hash
    code =17;
    code=37*code+@x.hash
    code=37+code+@y.hash
    code
  end

  # def <=>(other)
  #   return nil unless other.instance_of? Point
  #   @x**2 + @y**2 <=> other.x**2 + other.y*2
  # end

  def to_s
    "(#@x,#@y)"
  end

end


# p Point.new(0,0) < Point.new(2,3)


# class Point3D < Point
#   def initialize(x, y, z)
#     super(x, y)
#     @z = z
#   end
#
#   def to_s
#     "#@x,#@y,#@z"
#   end
# end
#
# class A
#   @@value = 1
#
#   def A.value
#     @@value
#   end
# end

# p A.value

# class B < A
#   @@value = 2
# end
#
# p A.value
#
# class C < B
#   @@value = 3
# end
#
# p B.value
#
# p A.value

# class Point
#   def initialize(x, y)
#     @x, @y=x, y
#   end
#
#   private_class_method :new
#
#   def Point.polar(r, theta)
#     new(r*Match.cos(theta), r*Math.sin(theta))
#   end
#
# end


# module Base64
#
#   def Base64.helper
#
#   end
#
#   class Encoder
#     def encode
#
#     end
#   end
#
#   class Decoder
#     def decoder
#
#     end
#   end
#
# end

# p1=Point.new(1,2)
#
# p p1.instance_variable_get(:@x)


# Base64::Encoder
# Base64::Decoder
#
#
# class Point
#   include Comparable
# end
#
#
# countdown = Object.new
# def countdown.each
#   yield 3
#   yield 2
#   yield 1
# end
#
# countdown.extend(Enumerable)
# print countdown.sort


# def add_method(c, m, &b)
#   c.class_eval {
#     define_method(m, &b)
#   }
# end
#
# add_method(String, :greet) { "Hello, "+self }

# p "world".greet


# def Object.inherited(c)
#   puts "class #{c} < #{self}"
# end
#
#
# class B
#
# end

# module Final
#   def self.included(c)
#     c.instance_eval do
#       def inherited(sub)
#         raise Exception, "Attempt to create subclass #{sub} of Final class #{self}"
#       end
#     end
#   end
# end


# module Ma
#   MA_VALUE = 1
#   def ma_1
#     puts "it is ma_1"
#   end
# end
#
# module Mb
#   MB_VALUE = 1
#   def self.included(c)
#     def c.mb_2
#       puts "it is mb 2"
#     end
#   end
#
#   def mb_1
#     puts "it is mb 1"
#   end
# end
#
# class Ca
#   include Ma
# end
#
# class Cb
#   extend Ma
#   include Mb
#   # include Mb
# end

# c1=Ca.new
# c1.ma_1

# c2=Cb.new

# c2.mb_1
# c2.mb_2

# Cb.mb_1
# c2.mb_1

# Cb.mb_2


# STDERR.puts "#{__FILE__}:#{__LINE__}: invalid data"

# def test
#   p "Assertion failed in #{__method__} at #{__FILE__}:#{__LINE__}"
# end
#
# test

# ObjectSpace.each_object(Class) { |c| puts c }


# 1.upto(5) {|i| after i {puts i}}


# def readfiles(filenames)
#   threads = filenames.map do |f|
#     Thread.new { File.read(f) }
#   end
#   return threads
# end
#
#
# threads=readfiles([
#               "/Users/wang/RubymineProjects/Test/ConcernTest.rb",
#               "/Users/wang/RubymineProjects/Test/Point.rb",
#               "/Users/wang/RubymineProjects/Test/PolymorphismTest.rb",
#               "/Users/wang/RubymineProjects/Test/RubyJwtTest.rb",
#               "/Users/wang/RubymineProjects/Test/Test.rb",
#               "/Users/wang/RubymineProjects/Test/Test2.rb"
#           ])
#
# values=threads.map { |t| t.value }
#
# values.each do |s|
#   p s
# end


# f = Fiber.new {
#   puts "Fiber says Hello"
#   Fiber.yield
#   puts "Fiber says Goodbye"
# }
#
# puts "Caller says Hello"
# f.resume
# puts "Caller says Goodbye"
# f.resume


# def method_name(x)
#
# rescue
#
# else
#
# ensure
#
# end

# x,y,z=["a", "b","c"]
#
# p x
# p y
# p z

Defining Singleton Methods















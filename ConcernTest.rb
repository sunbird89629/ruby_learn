module Foo
  def foo
    puts 'foo method with include...'
  end
end
#
# class Bar
#   include Foo
# end
#
# # Bar.new.foo
# #
# # Bar.foo
#
#
# class Baz
#   extend Foo
# end
#
# Baz.foo

#
# baz=Baz.new
# baz.foo

#
# module Foo
#   def self.included(base)
#
#     puts 'self.included method called....'
#     puts self
#     puts base
#
#     base.extend(ClassMethods)
#   end
#
#   module ClassMethods
#     def bar
#       puts 'class method'
#     end
#   end
#
#   def foo
#     puts 'instance method'
#   end
# end
#
# class Baz
#   include Foo
# end
#
# Baz.bar
#
# Baz.new.foo


# module A
#   def self.included(mod)
#     puts "#{self} included in #{mod}"
#   end
# end
#
# module Enumerable
#   include A
# end


# module M
#   def self.included(base)
#     base.extend ClassMethods
#     base.class_eval do
#       scope :disabled, -> { where(disabled: true) }
#     end
#
#     include InstanceMethods
#   end
#
#   module ClassMethods
#     def say_hello
#       puts "say hello"
#     end
#   end
#
#   module InstanceMethods
#     def say_no
#       puts "Say no"
#     end
#   end
# end

# require 'active_support/concern'

# module M
#   extend ActiveSupport::Concern
#
#   included do
#     scope :disable, -> { where(disable: true) }
#
#     include InstanceMethods
#   end
#
#   module ClassMethods
#     def say_hello
#       puts "say hello"
#     end
#   end
#
#
#   module InstanceMethods
#     def say_no
#       puts 'say no'
#     end
#   end
# end


module Concern

  class MultipleIncludedBlocks < StandardError
    def initialize
      super "Cannot define multiple 'included' blocks for a Concern"
    end
  end

  def self.extended(base)
    base.instance_variable_set(:@_dependencies, [])
  end

  def append_features(base)
    if base.instalce_variable_defined?(:@_dependencies)
      base.instance_variable_get(:@_dependencies) << self
      return false
    else
      return false if base < self

    end
  end

end




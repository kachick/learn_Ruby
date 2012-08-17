require_relative 'foo/version'
require_relative 'foo/erros'
require_relative 'foo/constants'
require_relative 'foo/bar'
require_relative 'foo/singletonclass'

class Foo

  attr_reader :value

  def initialize(value)
    @value = value
  end

  # @return [Boolean]
  def ==(other)
    other.respond_to?(:foo?) && other.foo? && (other.value == value)
  end

  def eql?(other)
    other.respond_to?(:foo?) && other.foo? && (other.value.eql? value)   
  end

  # @return [Number]
  def hash
    value.hash
  end

  # @return [Boolean]
  def ===(other)
  end

  # @return [String]
  def to_s
  end

  # @return [String]
  def inspect
  end

  def foo?(other)
  end

  private

  def initialize_copy(original)
    @value = @value.dup
  end

end

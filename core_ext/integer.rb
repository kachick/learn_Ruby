# coding: us-ascii
# Copyright (c) 2015 Kenichi Kamiya

class Integer
  def divisor?(n)
    return true if zero? && n.zero?
    return false if n.zero?

    (self % n).zero?
  end
  
  def divisors
    case
    when zero?
      [0]
    when self > 0
      1.upto(self).select { |n| divisor? n }
    when self < 0
      upto(-1).select { |n| divisor? n }
    else
      raise 'should not reach here'
    end
  end
  
  def perfect?
    return false if zero?
    
    divisors.inject(:+) == self * 2
  end
  
  def imperfect?
    !perfect?
  end
  
  def semiperfect?
    all_combi = -> ary, &block {
      ary.size.downto(1).map { |n| ary.combination(n, &block) }
    }
    
    numbers = divisors.drop 1
    all_combi(numbers).any? { |com| com.inject(:+) == self }
  end
  
  def deficient?
    return false unless self > 0

    divisors.inject(:+) < self * 2
  end
  
  def abundant?
    return false unless self > 0

    divisors.inject(:+) > self * 2
  end
end

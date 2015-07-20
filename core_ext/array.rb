# coding: us-ascii
# Copyright (c) 2015 Kenichi Kamiya

class Array
  
  # [1, 2, 3].all_combinations.to_a #=> [[1, 2, 3], [1, 2], [1, 3], [2, 3], [1], [2], [3]]
  def all_combinations(&block)
    return to_enum __callee__ unless block_given?

    size.downto(1).map { |n| combination(n, &block) }
  end
  
end

# coding: us-ascii

require_relative 'spec_helper'
require_relative '../core_ext/array'

RSpec.describe Array do
  
  describe '#all_combinations' do
    
    subject { [1, 2, 3].all_combinations.to_a }
    
    it { should eq([[1, 2, 3], [1, 2], [1, 3], [2, 3], [1], [2], [3]]) }
    
  end
  
end

# coding: us-ascii

require_relative 'spec_helper'
require_relative '../core_ext/integer'

RSpec.describe Integer do
  describe '#divisor?' do
    it { expect(10.divisor?(0)).to eq(false) }
    it { expect(10.divisor?(1)).to eq(true) }
    it { expect(10.divisor?(2)).to eq(true) }
    it { expect(10.divisor?(3)).to eq(false) }
    it { expect(10.divisor?(4)).to eq(false) }
    it { expect(10.divisor?(10)).to eq(true) }
  end
  
  describe '#divisors' do
    it { expect(0.divisors).to eq([0]) }
    it { expect(6.divisors).to eq([1, 2, 3, 6]) }
    it { expect(-6.divisors).to eq([-6, -3, -2, -1]) }
  end
  
  describe '#perfect?' do
    it { expect(0.perfect?).to eq(false) }
    it { expect(1.perfect?).to eq(false) }
    it { expect(6.perfect?).to eq(true) }
    it { expect(27.perfect?).to eq(false) }
    it { expect(28.perfect?).to eq(true) }
    it { expect(29.perfect?).to eq(false) }
    it { expect(496.perfect?).to eq(true) }
    it { expect(8128.perfect?).to eq(true) }
  end
  
  describe '#deficient?' do
    it { expect(0.deficient?).to eq(false) }
    it { expect(1.deficient?).to eq(true) }
    it { expect(5.deficient?).to eq(true) }
    it { expect(6.deficient?).to eq(false) }
    it { expect(28.deficient?).to eq(false) }
    it { expect(29.deficient?).to eq(true) }
  end
  
  describe '#abundant?' do
    it { expect(0.abundant?).to eq(false) }
    it { expect(1.abundant?).to eq(false) }
    it { expect(12.abundant?).to eq(true) }
    it { expect(16.abundant?).to eq(false) }
    it { expect(102.abundant?).to eq(true) }
    it { expect(103.abundant?).to eq(false) }
  end
end

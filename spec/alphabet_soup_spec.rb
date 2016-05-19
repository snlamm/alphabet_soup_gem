require 'spec_helper'

describe AlphabetSoup do
  it 'has a version number' do
    expect(AlphabetSoup::VERSION).not_to be nil
  end

  # it 'does something useful' do
  #  expect(true).to eq(true)
  # end
  before(:example) do 
    @x = Alphabetize.new
    @x.alphabet = ".xyzabc"
  end

  it 'creates a new Alphabetize instance ' do 
    #x = Alphabetize.new
    expect(@x).to be_a(Alphabetize)
  end

  it '#alphabet creates a new alphabet' do 
    expect(@x.alphabet).to eq(".xyzabc")
  end

  it '#alphabetize sorts according to the alphabet' do
    arr = ["cab", "bay", "baz.", ".baz"]
    arr_sorted = [".baz", "bay", "baz.", "cab"]
    sorted_alphabet = @x.alphabetize(arr)
    expect(sorted_alphabet).to eq(arr_sorted)
  end

  it '#alphabetize sorts array with letters not in alphabet' do 
    arr = ["cab", "bay", ".baz", "..baz", ".d.baz"]
    arr_sorted = ["..baz", ".baz", ".d.baz", "bay", "cab"]
    sorted_alphabet = @x.alphabetize(arr)
    expect(sorted_alphabet).to eq(arr_sorted)
  end

end

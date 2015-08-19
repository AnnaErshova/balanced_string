
require_relative './spec_helper.rb'

describe "balanced string" do

  it 'returns "true" when the string is balanced' do
    string_1 = balanced?('st(r)i()ng')
    expect(string_1).to eq(true)
  end

  it 'returns "true" when the string is has no parentheses' do
    string_2 = balanced?('string')
    expect(string_2).to eq(true)
  end

  it 'returns "false" when the string is not balanced' do
    string_3 = balanced?('strin(g')
    expect(string_3).to eq(false)
  end

  it 'returns "invalid" when the string starts with )' do
    string_4 = balanced?('str)(()ing')
    expect(string_4).to eq("invalid")
  end

  it 'returns "invalid" when the string ends with (' do
    string_5 = balanced?('str())((ing')
    expect(string_5).to eq("invalid")
  end
  
end
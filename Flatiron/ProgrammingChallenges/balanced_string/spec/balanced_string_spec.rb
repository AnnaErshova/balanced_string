
require_relative './spec_helper.rb'

describe 'balanced?' do

  context 'string is balanced:' do
    it 'returns "true" when the string is balanced' do
      string_1 = balanced?('st(r)i()ng')
      expect(string_1).to eq(true)
    end
    it 'returns "true" when the string is balanced' do
      string_2 = balanced?('st(r())i()ng')
      expect(string_2).to eq(true)
    end
    it 'returns "true" when the string has no parentheses at all' do
      string_3 = balanced?('string')
      expect(string_3).to eq(true)
    end
    it 'returns "true" when the string is empty' do
      string_3 = balanced?('')
      expect(string_3).to eq(true)
    end
  end

  context 'string is unbalanced:' do
    it 'returns "false" when the string is not balanced' do
      string_4 = balanced?('strin())g')
      expect(string_4).to eq(false)
    end
    it 'returns "false" when the string is not balanced' do
      string_5 = balanced?('st()((((rin()g')
      expect(string_5).to eq(false)
    end
  end

  context 'string is invalid:' do
    it 'returns "invalid" when the first parentheses is ) even if the string would be balanced otherwise' do
      string_6 = balanced?('str)(()ing')
      expect(string_6).to eq("invalid")
    end
    it 'returns "invalid" when the first parentheses is )' do
      string_7 = balanced?('st))r(()ing')
      expect(string_7).to eq("invalid")
    end
    it 'returns "invalid" when the last parentheses is ( even if the string would be balanced otherwise' do
      string_8 = balanced?('str())()(ing')
      expect(string_8).to eq("invalid")
    end
    it 'returns "invalid" when the last parentheses is (' do
      string_9 = balanced?('str())((ing')
      expect(string_9).to eq("invalid")
    end
  end

end
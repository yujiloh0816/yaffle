require 'rails_helper'

RSpec.describe 'ActsAsYaffle' do
  context 'when a hickwalls yaffle_text_field' do
    it 'squawk prepends the word squawk' do
      expect(Hickwall.yaffle_text_field).to eq 'last_squawk'
    end
  end

  context 'when a wickwalls yaffle_text_field' do
    it 'squawk prepends the word squawk' do
      expect(Wickwall.yaffle_text_field).to eq 'last_tweet'
    end
  end

  context 'when hickwalls squawk' do
    it 'should populate last_squawk' do
      hickwall = Hickwall.new
      hickwall.squawk("Hello World")
      expect(hickwall.last_squawk).to eq 'squawk! Hello World'
    end
  end

  context 'when wickwalls squawk' do
    it 'should populate last_tweet' do
      wickwall = Wickwall.new
      wickwall.squawk("Hello World")
      expect(wickwall.last_tweet).to eq 'squawk! Hello World'
    end
  end

end

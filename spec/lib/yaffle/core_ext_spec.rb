require 'rails_helper'

RSpec.describe 'CoreExt' do
  it 'squawk prepends the word squawk' do
    expect('Hello World'.to_squawk).to eq 'squawk! Hello World'
  end
end

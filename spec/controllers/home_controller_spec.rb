require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe 'get #calculator' do
    it 'renders the calculator page' do
      get :calculator
      expect(response).to be_successful
    end
  end

  describe 'response to calculator method' do
    it { is_expected.to respond_to(:calculator)}
  end

  describe '#calculator1' do
    it 'it splits input parameters' do
      get :calculator
      input_string = 'dfa12mmnj45'.split('')
      expect(input_string).to eq(["d", "f", "a", "1", "2", "m", "m", "n", "j", "4", "5"])
    end
  end
end
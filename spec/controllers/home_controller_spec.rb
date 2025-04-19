require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe 'get #calculator' do
    it 'renders the calculator page' do
      get :calculator
      expect(response).to be_successful
    end
  end

  describe 'calculator method specs' do

    it { is_expected.to respond_to(:calculator)}
  end
end
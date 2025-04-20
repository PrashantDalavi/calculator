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
    subject {described_class.new}
    it 'it splits input parameters' do
      result = subject.send(:get_numbers, 'dfa12mmnj45')
      expect(result).to eq([1,2,4,5])
    end

    it 'checks for negative numbers' do
      result = subject.send(:check_for_neg_numbers, [3, 4, 5, 6, 8, 9, -9])
      expect(result).to be_truthy
    end

    it 'checks for response when no negative no present' do
      result = subject.send(:check_for_neg_numbers, [3, 4, 5, 6, 8, 9])
      expect(result).to be_falsy
    end
  end

  context 'when there are no negative numbers' do
    before do
      subject {described_class.new}
      allow(controller).to receive(:get_numbers).and_return([1, 2, 3])
      allow(controller).to receive(:check_for_neg_numbers).and_return(nil)
      get :calculator1, params: { query: '1,2,3' }
    end

    it 'sets @added_numbers to the sum of numbers' do
      expect(subject.instance_variable_get(:@added_numbers)).to eq(6)
    end
  end
end
require 'rails_helper'

RSpec.describe 'Home Routes', type: :routing do
  it 'routes to #calculator' do
    expect(get: '/').to route_to('home#calculator')
  end
end
class HomeController < ApplicationController

  skip_forgery_protection only: [:calculator1] 

  def calculator; end

  def calculator1
    numbers = get_numbers(params[:query])
    @errors = check_for_neg_numbers(numbers)
    @added_numbers = numbers.sum unless @errors.present?
    render :calculator
  end

  private

  def get_numbers(input)
    input.scan(/-?\d/).map(&:to_i)
  end

  def check_for_neg_numbers(numbers)
    if numbers.any?{|n| n < 0}
      'Please choose only positive numbers'
    end
  end

end

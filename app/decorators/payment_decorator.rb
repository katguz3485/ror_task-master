# frozen_string_literal: true

class PaymentDecorator < Draper::Decorator
  delegate_all
  include Draper::LazyHelpers

  def format_tuition_fee_to_date
    payment.tuition_fee.nil? ? '' : payment.tuition_fee.strftime('%B %Y')
  end

  def convert_sum_to_currency
    number_to_currency(payment.sum, unit: '$')
  end
end

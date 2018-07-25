class PaymentsController < ApplicationController
  expose(:payments, attributes: :payment_params)
  expose(:payments)
  before_filter :authenticate_user!

end

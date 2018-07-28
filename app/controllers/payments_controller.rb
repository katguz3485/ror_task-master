# frozen_string_literal: true

class PaymentsController < ApplicationController
  expose(:payments, attributes: :payment_params)
  expose :payments, -> { Payment.all }
  before_action :authenticate_user!
end

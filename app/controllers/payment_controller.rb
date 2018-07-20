class PaymentController < ApplicationController
  expose(:students)
  expose(:payment, attributes: :payment_params)
  expose(:payments)
  before_filter :authenticate_user!

  def create
    if payment.save
      redirect_to payment_path(payment), notice: I18n.t('shared.created', resource: 'Payment')
    else
      render :new
    end
  end

  def update
    if payment.save
      redirect_to payment_path(payment), notice: I18n.t('shared.updated', resource: 'Payment')
    else
      render :edit
    end
  end

  def destroy
    payment.destroy
    redirect_to payment_path, notice: I18n.t('shared.deleted', resource: 'Payment')
  end

  private

  def payment_params
    params.require(:payment).permit(:sum, :date, :student_id)
  end
end

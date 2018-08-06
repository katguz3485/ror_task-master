class SubjectItemsController < ApplicationController
  expose(:subject_item, attributes: :subject_item_params)
  expose :subject_items, -> { SubjectItem.all }

  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token


  def create
    if subject_item.save
      redirect_to subject_item_path(subject_item), notice: I18n.t('shared.created', resource: 'Student')
    else
      render :new
    end
  end

  def update
    if subject_item.save
      redirect_to subject_item_path(subject_item), notice: I18n.t('shared.updated', resource: 'Subject Item')
    else
      render :edit
    end
  end

  def destroy
    subject_item.destroy
    redirect_to subject_items_path, notice: I18n.t('shared.deleted', resource: 'Subject Item')
  end

  private

  def subject_item_params
    params.require(:subject_item_note).permit(:value, :student_id)
  end

end

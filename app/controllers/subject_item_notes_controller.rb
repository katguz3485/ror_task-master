class SubjectItemNotesController < ApplicationController
  expose(:subject_item_note, attributes: :subject_item_note_params)
  expose :subject_item_notes, -> {SubjectItemNote.all}

  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def create
    if subject_item_note.save
      redirect_to subject_item_note_path(subject_item_note), notice: I18n.t('shared.created', resource: 'Subject Item Note')
    else
      render :new
    end
  end

  def update
    if subject_item_note.save
      redirect_to subject_item_note_path(subject_item_note), notice: I18n.t('shared.updated', resource: 'Subject Item Note')
    else
      render :edit
    end
  end

  def destroy
    subject_item.destroy
    redirect_to subject_item_notes_path, notice: I18n.t('shared.deleted', resource: 'Subject Item Note')
  end

  private

  def subject_item_note_params
    params.require(:subject_item_note).permit(:student_id, :subject_item_id, :value)
  end


end



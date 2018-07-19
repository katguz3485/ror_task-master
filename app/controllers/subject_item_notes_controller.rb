class SubjectItemNotesController < ApplicationController
  before_action :set_subject_item_note, only: [:show, :edit, :update, :destroy]

  # GET /subject_item_notes
  # GET /subject_item_notes.json
  def index
    @subject_item_notes = SubjectItemNote.all
  end

  # GET /subject_item_notes/1
  # GET /subject_item_notes/1.json
  def show
  end

  # GET /subject_item_notes/new
  def new
    @subject_item_note = SubjectItemNote.new
  end

  # GET /subject_item_notes/1/edit
  def edit
  end

  # POST /subject_item_notes
  # POST /subject_item_notes.json
  def create
    @subject_item_note = SubjectItemNote.new(subject_item_note_params)

    respond_to do |format|
      if @subject_item_note.save
        format.html { redirect_to @subject_item_note, notice: 'Subject item note was successfully created.' }
        format.json { render :show, status: :created, location: @subject_item_note }
      else
        format.html { render :new }
        format.json { render json: @subject_item_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_item_notes/1
  # PATCH/PUT /subject_item_notes/1.json
  def update
    respond_to do |format|
      if @subject_item_note.update(subject_item_note_params)
        format.html { redirect_to @subject_item_note, notice: 'Subject item note was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_item_note }
      else
        format.html { render :edit }
        format.json { render json: @subject_item_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_item_notes/1
  # DELETE /subject_item_notes/1.json
  def destroy
    @subject_item_note.destroy
    respond_to do |format|
      format.html { redirect_to subject_item_notes_url, notice: 'Subject item note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_item_note
      @subject_item_note = SubjectItemNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_item_note_params
      params.require(:subject_item_note).permit(:student_id, :subject_item_id)
    end
end

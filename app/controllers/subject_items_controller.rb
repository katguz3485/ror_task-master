class SubjectItemsController < ApplicationController
  before_action :set_subject_item, only: [:show, :edit, :update, :destroy]

  # GET /subject_items
  # GET /subject_items.json
  def index
    @subject_items = SubjectItem.all
  end

  # GET /subject_items/1
  # GET /subject_items/1.json
  def show
  end

  # GET /subject_items/new
  def new
    @subject_item = SubjectItem.new
  end

  # GET /subject_items/1/edit
  def edit
  end

  # POST /subject_items
  # POST /subject_items.json
  def create
    @subject_item = SubjectItem.new(subject_item_params)

    respond_to do |format|
      if @subject_item.save
        format.html { redirect_to @subject_item, notice: 'Subject item was successfully created.' }
        format.json { render :show, status: :created, location: @subject_item }
      else
        format.html { render :new }
        format.json { render json: @subject_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_items/1
  # PATCH/PUT /subject_items/1.json
  def update
    respond_to do |format|
      if @subject_item.update(subject_item_params)
        format.html { redirect_to @subject_item, notice: 'Subject item was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_item }
      else
        format.html { render :edit }
        format.json { render json: @subject_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_items/1
  # DELETE /subject_items/1.json
  def destroy
    @subject_item.destroy
    respond_to do |format|
      format.html { redirect_to subject_items_url, notice: 'Subject item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_item
      @subject_item = SubjectItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_item_params
      params.require(:subject_item).permit(:teacher_id)
    end
end

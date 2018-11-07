class Folder2sController < ApplicationController
  before_action :set_folder2, only: [:show, :edit, :update, :destroy]

  # GET /folder2s
  # GET /folder2s.json
  def index
    @folder2s = Folder2.all
  end

  # GET /folder2s/1
  # GET /folder2s/1.json
  def show
  end

  # GET /folder2s/new
  def new
    @folder2 = Folder2.new
  end

  # GET /folder2s/1/edit
  def edit
  end

  # POST /folder2s
  # POST /folder2s.json
  def create
    @folder2 = Folder2.new(folder2_params)

    respond_to do |format|
      if @folder2.save
        format.html { redirect_to @folder2, notice: 'Folder2 was successfully created.' }
        format.json { render :show, status: :created, location: @folder2 }
      else
        format.html { render :new }
        format.json { render json: @folder2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folder2s/1
  # PATCH/PUT /folder2s/1.json
  def update
    respond_to do |format|
      if @folder2.update(folder2_params)
        format.html { redirect_to @folder2, notice: 'Folder2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @folder2 }
      else
        format.html { render :edit }
        format.json { render json: @folder2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folder2s/1
  # DELETE /folder2s/1.json
  def destroy
    @folder2.destroy
    respond_to do |format|
      format.html { redirect_to folder2s_url, notice: 'Folder2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder2
      @folder2 = Folder2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def folder2_params
      params.require(:folder2).permit(:title, :content)
    end
end

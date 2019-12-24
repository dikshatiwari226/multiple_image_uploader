class AttachFilesController < ApplicationController
  before_action :set_attach_file, only: [:show, :edit, :update, :destroy]

  # GET /attach_files
  # GET /attach_files.json
  def index
    @attach_files = AttachFile.all
  end

  # GET /attach_files/1
  # GET /attach_files/1.json
  def show
  end

  # GET /attach_files/new
  def new
    @attach_file = AttachFile.new
  end

  # GET /attach_files/1/edit
  def edit
  end

  # POST /attach_files
  # POST /attach_files.json
  def create
    @attach_file = AttachFile.new
    if params[:attach_file].present?
      images = params[:attach_file].pop
      params[:attach_file].each do |img|
        @attach_file = AttachFile.new(image: img)
        @attach_file.save
      end
    # if params[:attach_file].present?
    #   params[:attach_file].each_with_index do |img, index|
    #     if params[:attach_file].count != (index + 1)
    #       @attach_file = AttachFile.new(image: img)
    #       @attach_file.save
    #     end
    #   end
    end
      redirect_to attach_files_path, notice: 'Attach file was successfully created.'

    # @attach_file = AttachFile.new(attach_file_params)
    # if @attach_file.save
    #   redirect_to attach_files_path, notice: 'Attach file was successfully created.'
    # end


    #   if attach_file_params[:image]
    #     attach_file_params[:image].each do  |img|
    #      @file =  AttachFile.new(image: img, title: attach_file_params[:title])
    #      @file.save
    #     end
    #   end
    # respond_to do |format|
    #   if @file.save
    #     format.html { redirect_to @attach_file, notice: 'Attach file was successfully created.' }
    #     format.json { render :show, status: :created, location: @attach_file }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @attach_file.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /attach_files/1
  # PATCH/PUT /attach_files/1.json
  def update
    respond_to do |format|
      if @attach_file.update(attach_file_params)
        format.html { redirect_to @attach_file, notice: 'Attach file was successfully updated.' }
        format.json { render :show, status: :ok, location: @attach_file }
      else
        format.html { render :edit }
        format.json { render json: @attach_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attach_files/1
  # DELETE /attach_files/1.json
  def destroy
    @attach_file.destroy
    respond_to do |format|
      format.html { redirect_to attach_files_url, notice: 'Attach file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attach_file
      @attach_file = AttachFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attach_file_params
      params.require(:attach_file).permit(:title, image:[])
    end
end

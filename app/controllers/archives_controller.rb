class ArchivesController < ApplicationController
  before_action :set_archive, only: [:show, :edit, :update, :destroy]

  # GET /archives
  # GET /archives.json
  def index
    @archives = Archive.all
  end

  # GET /archives/1
  # GET /archives/1.json
  def show
  end

  def january
    p "january" * 1000
  end

  def february
    p "february" * 1000
  end

  def march
    p "march" * 1000
  end

  def april
    p "april" * 1000
  end

  def may
    p "may" * 1000
  end

  def june
    p "june" * 1000
  end

  def july
    p "july" * 1000
  end

  def august
    p "august" * 1000
  end

  def september
    p "september" * 1000
  end

  def november
    p "november" * 1000
  end

  def december
    p "december" * 1000
  end



  # GET /archives/new
  def new
    @archive = Archive.new
  end

  # GET /archives/1/edit
  def edit
  end

  # POST /archives
  # POST /archives.json
  def create
    @archive = Archive.new(archive_params)

    respond_to do |format|
      if @archive.save
        format.html { redirect_to @archive, notice: 'Archive was successfully created.' }
        format.json { render :show, status: :created, location: @archive }
      else
        format.html { render :new }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archives/1
  # PATCH/PUT /archives/1.json
  def update
    respond_to do |format|
      if @archive.update(archive_params)
        format.html { redirect_to @archive, notice: 'Archive was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive }
      else
        format.html { render :edit }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archives/1
  # DELETE /archives/1.json
  def destroy
    @archive.destroy
    respond_to do |format|
      format.html { redirect_to archives_url, notice: 'Archive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive
      if params[:id].is_a? Integer
        @archive = Archive.find(params[:id])
      end 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_params
      params[:archive]
    end
end

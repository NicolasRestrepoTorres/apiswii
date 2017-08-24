class LanguaguesController < ApplicationController
  before_action :set_languague, only: [:show, :edit, :update, :destroy]

  # GET /languagues
  # GET /languagues.json
  def index
    @languagues = Languague.all
  end

  # GET /languagues/1
  # GET /languagues/1.json
  def show
  end

  # GET /languagues/new
  def new
    @languague = Languague.new
  end

  # GET /languagues/1/edit
  def edit
  end

  # POST /languagues
  # POST /languagues.json
  def create
    @languague = Languague.new(languague_params)

    respond_to do |format|
      if @languague.save
        format.html { redirect_to @languague, notice: 'Languague was successfully created.' }
        format.json { render :show, status: :created, location: @languague }
      else
        format.html { render :new }
        format.json { render json: @languague.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languagues/1
  # PATCH/PUT /languagues/1.json
  def update
    respond_to do |format|
      if @languague.update(languague_params)
        format.html { redirect_to @languague, notice: 'Languague was successfully updated.' }
        format.json { render :show, status: :ok, location: @languague }
      else
        format.html { render :edit }
        format.json { render json: @languague.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languagues/1
  # DELETE /languagues/1.json
  def destroy
    @languague.destroy
    respond_to do |format|
      format.html { redirect_to languagues_url, notice: 'Languague was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_languague
      @languague = Languague.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def languague_params
      params.require(:languague).permit(:variance, :name, :readabilty)
    end
end

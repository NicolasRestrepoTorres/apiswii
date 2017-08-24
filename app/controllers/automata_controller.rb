class AutomataController < ApplicationController
  before_action :set_automatum, only: [:show, :edit, :update, :destroy]

  # GET /automata
  # GET /automata.json
  def index
    @automata = Automatum.all
  end

  # GET /automata/1
  # GET /automata/1.json
  def show
  end

  # GET /automata/new
  def new
    @automatum = Automatum.new
  end

  # GET /automata/1/edit
  def edit
  end

  # POST /automata
  # POST /automata.json
  def create
    @automatum = Automatum.new(automatum_params)

    respond_to do |format|
      if @automatum.save
        format.html { redirect_to @automatum, notice: 'Automatum was successfully created.' }
        format.json { render :show, status: :created, location: @automatum }
      else
        format.html { render :new }
        format.json { render json: @automatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automata/1
  # PATCH/PUT /automata/1.json
  def update
    respond_to do |format|
      if @automatum.update(automatum_params)
        format.html { redirect_to @automatum, notice: 'Automatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @automatum }
      else
        format.html { render :edit }
        format.json { render json: @automatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automata/1
  # DELETE /automata/1.json
  def destroy
    @automatum.destroy
    respond_to do |format|
      format.html { redirect_to automata_url, notice: 'Automatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automatum
      @automatum = Automatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def automatum_params
      params.require(:automatum).permit(:title, :function, :working)
    end
end

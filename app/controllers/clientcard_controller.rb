class ClientcardController < ApplicationController
before_action :logged_in_user
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clientcard
  # GET /clientcard.json
  def index
    @clientcards = Clientcard.all
  end

  # GET /clientcard/1
  # GET /clientcard/1.json
  def show
  end

  # GET /clientcard/new
  def new
    @clientcard = Clientcard.new
  end

  # GET /clientcard/1/edit
  def edit
  end

  # POST /clientcard
  # POST /clientcard.json
  def create
    @clientcard = Clientcard.new(clientcard_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Clard was successfully created.' }
        format.json { render :show, status: :created, location: @clientcard }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientcards/1
  # PATCH/PUT /clientcards/1.json
  def update
    respond_to do |format|
      if @clientcard.update(clientcard_params)
        format.html { redirect_to @clientcard, notice: 'Clientcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientcard }
      else
        format.html { render :edit }
        format.json { render json: @clientcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientcards/1
  # DELETE /clientcards/1.json
  def destroy
    @clientcard.destroy
    respond_to do |format|
      format.html { redirect_to clientcards_url, notice: 'Clientcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientcard
      @clientcard = Clientcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientcard_params
      params.require(:client).permit(:name, :exercise, :howtodo, :frequency, :coach)
    end
end

class CardsController < ApplicationController
  before_action :logged_in_user, :load_client
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = @client.cards
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @card = @client.cards.new
  end

  # GET /cards/1/edit
  def edit
    @card = @client.cards.find(params[:id])
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = @client.cards.new(card_params)

    respond_to do |format|
      if @card.save
      redirect_to client_path(@client), notice: "Item salvo!"
    else
      redirect_to new_client_card_path(@client), notice: "Falha ao salvar o item."
    end
   end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @client, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card = @client.cards.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def load_client
      @client = Client.find(params[:client_id])
    end
    def set_card
      @card = Card.find(params[:id])
    end
    def load_card
      @card = @client.cards.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:exercise, :frequency, :howtodo)
    end
end

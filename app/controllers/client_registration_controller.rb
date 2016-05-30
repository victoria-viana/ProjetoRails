class ClientRegistrationController < ApplicationController
    def new
     @client = Client.new
    end

    def create
        @client = Client.new(client_params)

        if @client.save
            redirect_to client_new_session_path
            flash.now[:success] = 'Cadastro realizado com sucesso.'
        else
          # Create an error message.
            flash.now[:error] = 'Erro ao criar cadastro.'
            render 'new'
        end
    end

    def destroy

    end

    private

    def client_params
      params.require(:client).permit(:name, :email, :password, :password_confirmation)
    end
end

class RegistrationController < ApplicationController
    def new
        @coach = Coach.new
    end

    def create
        @coach = Coach.new(coach_params)

        if @coach.save
            redirect_to coach_new_session_path
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

    def coach_params
      params.require(:coach).permit(:name, :email, :cpf, :password, :password_confirmation)
    end
end

class TeachingAssistantsController < ApplicationController
  def new
    @teaching_assistant = TeachingAssistant.new
  end

  def create
    teaching_assistant = TeachingAssistant.new(teaching_assistant_params)

    if teaching_assistant.save
      flash[:notice] = 'Thank you for signing up to be a Teaching Assistant!'
      redirect_to root_path
    else
      @teaching_assistant = teaching_assistant

      flash[:error] = 'Your form submission had errors.'
      render :new
    end
  end

  private

  def teaching_assistant_params
    params.require(:teaching_assistant).permit(allowed_attributes)
  end

  def allowed_attributes
    [:name,
     :email,
     :gender,
     :experience,
     :bio,
     :company,
     :operating_system,
     :company,
     :other_information,
     :past_experience]
  end
end

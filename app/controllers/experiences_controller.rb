class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_experience, only: %i[edit update destroy]
  def index
    @experiences = Experience.all.order('start_date desc')
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to root_url, notice: 'Expérience ajoutée'
    else
      render :new, notice: 'Informations incorrectes'
    end
  end

  def edit; end

  def update
    if @experience.update(experience_params)
      redirect_to experiences_path, notice: 'Expérience modifiée'
    else
      render :edit, notice: 'Informations incorrectes'
    end
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path, notice: "L'expérience' a été supprimée"
  end

  private

  def experience_params
    params.require('experience').permit(
      :start_date,
      :end_date,
      :company,
      :type,
      :role,
      :description,
      :company_logo_url
    )
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end

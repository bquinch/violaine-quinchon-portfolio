RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with do
    unless current_user.admin?
      flash[:alert] = 'Sorry, no admin access for you.'
      redirect_to main_app.root_path
    end
  end

  config.included_models = [ "Experience", "Resume", "Skill", "User" ]

  config.model 'Experience' do
    field :category, :enum do
      enum do
        ["Travail", "Études", "Centres d'intérêt"]
      end
    end
    field :company
    field :role
    field :description
    field :company_logo_url
    field :current
    field :photo
    field :start_date
    field :end_date
  end

  config.model 'Skill' do
    field :name
    field :category, :enum do
      enum do
        ["Communication", "Technologies", "Soft Skills"]
      end
    end
  end

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

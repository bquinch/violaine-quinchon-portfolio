FactoryBot.define do
  factory :experience do
    start_date  { Date.today - 5.years }
    end_date    { Date.today - 1.year }
    company     { "Google" }
    role        { "CEO" }
    description { "Rule the world" }
    category    { "Travail" }
    current     { false }
    photo       { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'rspec.png'), 'image/png') }

    trait :etudes do
      category { "Études" }
    end

    trait :interet do
      category { "Centres d'intérêt" }
    end
  end
end

FactoryBot.define do
  factory :cv do
    photo { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'rspec.png'), 'image/png') }
  end
end

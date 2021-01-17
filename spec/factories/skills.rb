FactoryBot.define do
  factory :skill do
    category  { "Technologies" }
    name      { "VueJS" }
    priority  { 5 }

    trait :communication do
      category  { "Communication" }
    end

    trait :soft_skill do
      category  { "Soft Skills" }
    end
  end
end

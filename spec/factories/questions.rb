FactoryBot.define do
  factory :question do
    enunciated { Faker::Lorem.question }
  

    initialize_with {
      new.custom_initialization(
        enunciated: enunciated
      )
    }
  end
end

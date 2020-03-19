FactoryBot.define do
  factory :score do
    nickname { Faker::Name.name }
    urgency { Faker::Number.decimal(l_digits: 2) }
    important { Faker::Number.decimal(l_digits: 2) }
    circumstance { Faker::Number.decimal(l_digits: 2) }
  

    initialize_with {
      new.custom_initialization(
        nickname: nickname,
        urgency: urgency,
        important: important,
        circumstance: circumstance
      )
    }
  end
end

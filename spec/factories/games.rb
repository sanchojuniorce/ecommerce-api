FactoryBot.define do
  factory :game do
    mode { %i(pvp pve both).sample }
    release_date { "2021-12-30 07:28:09" }
    developer { Faker::Company.name }
    system_requirement 
  end
end

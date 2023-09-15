FactoryBot.define do
  factory :post do
    airport_name { "MyString" }
    prefecture { "MyString" }
    city { "MyString" }
    impression { "MyText" }
    image { "" }
    user { nil }
  end
end

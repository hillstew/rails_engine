FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
    unit_price { 1.5 }
    merchant { create(:merchant).id }
  end
end

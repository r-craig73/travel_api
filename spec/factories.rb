FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
    password_digest "MyString"
  end
  factory(:location) do
    country('Mexico')
    city('Mexico City')
  end
end

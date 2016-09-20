FactoryGirl.define do
  factory :user do
    name     "Andrian Gretsko"
    email    "andrian@ukr.net"
    password "1234567"
    password_confirmation "1234567"
    age 23
    gender "male"
    occupation "student"
  end
end

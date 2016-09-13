FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name "Doe"
    email "example@example.co"
    after(:build) { |u| u.password_confirmation = u.password = 'password' }
  end
end

FactoryGirl.define do
  factory :trip do
    start_address "Starowiejska 11, Gdnia, Polska"
    destination_address "Beniowskiego 13, Gdynia, Polska"
    cost "13.22"
    distance "2.1"
    transport_type "Uber"
  end
end

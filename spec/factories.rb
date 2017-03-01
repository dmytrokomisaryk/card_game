FactoryGirl.define do
  factory :user do
    username 'ExName'
    email    'johndoe@example.com'
    password '12345678'
    role     User.roles[:player]
  end

  factory :card do
    kind  :j
    value :diamond
  end
end
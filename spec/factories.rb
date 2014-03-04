FactoryGirl.define do
  factory :user do
    name     "Andrew Marrone"
    email    "andrew@andrew.com"
    password "foo"
    password_confirmation "foo"
  end
end

# DONE 01/12 
# Generate fixture via FactoryBot
# This file is boilerplate you can use from anywhere in your spec file


# TODO check if password needs to have 8 chars. Check if you cand define user with editor set to true
FactoryBot.define do
    factory :user do
      sequence(:email) {|n| "test-#{n.to_s.rjust(3,"0")}@sample.com"}
      password{"12345678"}
      role{"Normal"}
    end
  end
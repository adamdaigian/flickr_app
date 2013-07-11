FactoryGirl.define do
  factory :photo do
    album
    url File.open(File.join(Rails.root, "public/test.jpg"))
  end
end
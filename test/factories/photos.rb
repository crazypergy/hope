FactoryGirl.define do
  factory :photo do
    title "MyString"
    image_file_name { fixture_file_upload('spec/file/landscape_image.jpg', 'image/jpg') }
  end
end

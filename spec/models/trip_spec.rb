require "support/mongoid"

describe Trip do 
  it {should have_field(:name)}
  it {should have_field(:title)}
  it {should have_field(:active)}
  it {should have_field(:short_description)}
  it {should have_field(:long_description)}
  it {should have_field(:seo_description)}
  it {should have_field(:internal_status)}
  it {should have_field(:rating)}
  it {should have_field(:owner)}
  it {should have_field(:created_at)}
  it {should have_field(:updated_at)}

  it {should validate_presence_of(:name)}
  it {should validate_presense_of(:title)}
  it {should validate_presense_of(:active)}
  it {should validate_presense_of(:short_description)}
  it {should validate_presense_of(:long_description)}
  it {should validate_presense_of(:seo_description)}
  it {should validate_presense_of(:internal_status)}
  it {should validate_presense_of(:rating)}
  it {should validate_presense_of(:owner)}

  it {should validate_uniqueness_of(:name)}
  it {should validate_uniqueness_of(:title)}

  it {should have_field(:active).of_type(Boolean).with_default_value_of(false)}
  it {should have_field(:name).of_type(String)}  
  it {should have_field(:title).of_type(String)}  
  it {should have_field(:short_description).of_type(String)}  
  it {should have_field(:long_description).of_type(String)}  
  it {should have_field(:seo_description).of_type(Array)}  
  it {should have_field(:internal_status).of_type(String)}  
  it {should have_field(:rating).of_type(Integer)}  
  it {should have_field(:owner).of_type(String)}  
  it {should have_field(:created_at).of_type(DateTime)}  
  it {should have_field(:updated_at).of_type(DateTime)}  

  it {should have_index_for(name: 1).with_options(unique: true)}
  it {should have_index_for(titlw: 1).with_options(unique: true)}

  it {should validate_length_of(:name).within(4..20)}
  it {should validate_length_of(:title).within(4..20)}
  it {should validate_length_of(:long_description).within(10..500)}
  it {should validate_length_of(:short_description).within(10..100)}
  it {should validate_length_of(:seo_description).within(10..100)}
  it {should validate_numericality_of(:rating).to_allow.(only_integer: true)}
  it {should validate_numericality_of(:rating).within(1..10)}
end
class Trip
  include Mongoid::Document

  field :name, type: String
  field :title, type: String
  field :active, type: Boolean, default: false
  field :short_description, type: String
  field :long_description, type: String
  field :seo_description, type: Array
  field :internal_status, type: String
  field :rating, type: Integer
  field :owner, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  validates :name, presence: true
  validates :title, presence: true
  validates :active, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true
  validates :seo_description, presence: true
  validates :internal_status, presence: true
  validates :rating, presence: true
  validates :owner, presence: true

  validates :name, uniqueness: true
  validates :title, uniqueness: true

  validates :name, length: {within:(4..20)} 
  validates :title, length: {within:(4..20)} 
  validates :long_description, length: {within:(10..500)} 
  validates :short_description, length: {within:(10..100)} 
  validates :seo_description, length: {within:(10..100)} 
  validates :rating, length: {within:(1..10)} 
  validates :rating, numericality:{only_integer: true}

  index({ name: 1 }, { unique: true})
  index({ title: 1 }, { unique: true})

end

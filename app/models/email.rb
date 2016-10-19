class Email
  include ActiveModel::Model
  
  EMAIL_REGEX = /(.+)(@)(.+)(\.)(.+)/

  # Text, text, text, text
  attr_accessor :content, :name, :return_email_address, :subject
  
  # VALIDATIONS

  validates :content, presence: true, length: { maximum: 2000 }
  validates :name, presence: true, length: { maximum: 256 }
  validates :return_email_address, presence: true, format: { with: EMAIL_REGEX }
  validates :subject, length: { maximum: 256 }
end

class Category < ApplicationRecord
  has_many :courses, dependent: :destroy
  def self.ransackable_attributes _auth_object = nil
    %w(created_at description id id_value name updated_at)
  end
end
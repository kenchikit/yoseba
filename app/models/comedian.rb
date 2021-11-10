class Comedian < ApplicationRecord
  def self.search(search)
    return Comedian.all unless search
    Comedian.where(['name LIKE ?', "%#{search}%"])
  end
end
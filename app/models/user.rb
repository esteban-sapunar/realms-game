class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create do
    available_manors = Manor.where(world_id: world_id, user_id: nil)
    available_manors.sample.update(user_id: id)
  end
end

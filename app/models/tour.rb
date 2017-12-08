class Tour < ApplicationRecord
  belongs_to :category_tour
  has_many :rate_tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :tourdetails, dependent: :destroy

  scope :search_name_tour, ->(name_tour){where "name_tour LIKE ?", "%#{name_tour}%"}
  scope :search_by_cat_tour, ->(category_tour_id){where "category_tour_id = ?", category_tour_id}
  scope :search_all, ->(name_tour, category_tour_id) do
    where "name_tour LIKE ? AND category_tour_id = ?", "%#{name_tour}%", category_tour_id
  end
end

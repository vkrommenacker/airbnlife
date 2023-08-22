class Life < ApplicationRecord
  belongs_to :owner, class_name: "User"
  skip_before_action :authenticate_user!, only: [:index, :show]
end

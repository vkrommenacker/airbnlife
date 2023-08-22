class Life < ApplicationRecord
  skip_before_action :authenticate_user!, only: [:index, :show]
end

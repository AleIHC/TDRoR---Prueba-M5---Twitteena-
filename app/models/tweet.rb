class Tweet < ApplicationRecord
    include PgSearch::Model


    pg_search_scope :search_full_text,
    against: {
        user_name: 'A',
        description: 'B',
        id: 'C',
        }
end

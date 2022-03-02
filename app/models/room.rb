class Room < ApplicationRecord


    def complete_name
        "#{title}, #{location}"        
    end

    validates :title, :location, :description, presence:true
    validates :description, length:{minimum: 30 }, allow_blank: false
    


end

module Helpers

    def generate_faker_book
         {
            :ID => Faker::Number.within(range: 1..10),
            :Title => Faker::Book.title,
            :Description => Faker::Lorem.paragraph,
            :PageCount => Faker::Number.within(range: 1..10),
            :Excerpt => Faker::Lorem.paragraph,
            :PublishDate => Faker::Date.in_date_period(year: 2018, month: 2)
         }
    end

    def get_time_now
        Time.now.strftime("%Y-%m-%d %H:%M:%S")
    end
    
end
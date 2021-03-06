namespace :seed do
  desc "Seed ingredients"
  task ingredients: :environment do

    #Ingredient.delete_all
    
    seed_file = Rails.root.join('db', 'seeds', 'ymls', 'ingredients.yml')
    config = YAML::load_file(seed_file)
    
    # executing before_create callback which helps to find an image
    Ingredient.create!(config)
  end
end
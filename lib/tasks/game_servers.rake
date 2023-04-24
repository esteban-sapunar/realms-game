namespace :game_worlds_tasks do
  desc 'Tasks for Game Worlds'
  task :create_one_kingdom_world => :environment do
    new_world_id = World.count+1
    World.create(name: "World #{new_world_id}")
  end
end

#  task :run_poke_api, [:number] do |task, args|


namespace :scheduler do
  desc "persist pokemons from pokeapi"

  task :run_poke_api => [:environment] do
    PokeWorker.new.perform
  end

end
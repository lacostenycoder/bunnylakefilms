namespace :assets do

  desc 'Update Filter Params after Migrations'
  task precompiile: :environment do
    # hack remvoe tungsten compiled
    # iterate over all Tungsten files that have a long random hash appended and delete them.
    # or keep the onese who match the exact extensions we want to keep. Whatever is easier.
  end

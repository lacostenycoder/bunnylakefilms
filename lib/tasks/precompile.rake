namespace :assets do

  desc 'Update Filter Params after Migrations'
  task precompile: :environment do
    # hack remove tungsten compiled
     # iterate over all Tungsten files that have a long random hash appended and delete them.
    Dir.entries('./public/assets').select{ |file| file['Tungsten']}.clear
    # copy Tungsten fonts from app/assets/fonts/Tungsten to public/assets folder
    `cp app/assets/fonts/Tungsten* public/assets`
    `cp app/assets/images/videothumb* public/assets`
    end
  end

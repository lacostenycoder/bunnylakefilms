class AddSeedClients < ActiveRecord::Migration
  def up
    return true if Rails.env.test?
    seed_clients.each do |name|
      Client.find_or_create_by(name: name)
    end
  end

  def down
    return true if Rails.env.test?
    seed_clients.each{|name| Client.find_by(name: name).destroy}
    ActiveRecord::Base.connection.reset_pk_sequence!('clients')
  end

  def seed_clients
    ["ALDO",
    "Beautylish",
    "Brooks Brothers",
    "Brown Crayon Project",
    "Christies",
    "The Culture Project",
    "D’Addario",
    "David’s Bridal",
    "Digital Graffiti",
    "Dior",
    "Frisk",
    "Galerie Perrotin",
    "Helzberg Diamonds",
    "Hillier Bartley",
    "i-D Magazine",
    "Kaikai Kiki",
    "Love Magazine",
    "M.A.C Cosmetics",
    "Maybelline",
    "Microsoft",
    "Museum of FIT",
    "Oroton",
    "Rolling Stone Magazine",
    "Teen Vogue",
    "Universal Music Group",
    "Vogue China",
    "Vogue Germany",
    "Zac Posen",
    "Calvin Klein",
    "Condé Nast",
    "Harper's Bazaar",
    "Holt Renfrew",
    "Hugo Boss",
    "Kenmark Eyewear",
    "Louis Vuitton",
    "Starwood Hotels",
    "Swarovski",
    "Tommy Hilfiger",
    "Walgreens"].sort_by { |word| word.downcase }
  end
end

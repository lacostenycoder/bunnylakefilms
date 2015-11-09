module BaseHelper

  def vimeo_json(vimeo_video_id)
    source = "http://vimeo.com/api/v2/video/#{vimeo_video_id}.json"
    data = Net::HTTP.get_response(URI.parse(source)).body
    JSON.parse(data).first
  end

  def vimeo_thumb(vimeo_video_id)
    vimeo_json(vimeo_video_id)['thumbnail_large']
  end

  def client_list
    clients = %(Albright Fashion Library
    ALDO
    Asaf Ganot
    Beautylish
    Brooks Brothers
    Brown Crayon Project
    Catherine Malandrino
    Christies
    The Culture Project
    D’Addario
    David’s Bridal
    Digital Graffiti
    Dior
    Frisk
    Galerie Perrotin
    Helzberg Diamonds
    Hillier Bartley
    i-D Magazine
    Kaikai Kiki
    Love Magazine
    M.A.C Cosmetics
    Marina Rinaldi
    Maybelline
    Microsoft
    Museum of FIT
    Oroton
    Rolling Stone Magazine
    Teen Vogue
    Universal Music Group
    Verameat
    Vogue China
    Vogue Germany
    Zac Posen).split("\n")
  end

end

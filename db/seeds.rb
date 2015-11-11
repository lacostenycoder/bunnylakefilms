temp_password = "fat12345"
u = User.new
u.email = "andy@andyeisberg.com"
u.password = temp_password
u.password_confirmation = temp_password
u.save!
u.encrypted_password = "$2a$10$izmG/qP3ftfo0GLgS5DG9O3oPK0u3MkmRWtRIK9u9E30ahf.Tdc7K"
u.save!

u = User.new
u.email="avivalasvegas@gmail.com"
u.password = temp_password
u.password_confirmation = temp_password
u.save!
u.encrypted_password = "$2a$10$qRE5D6Uegb0ztRSABJ/M2ecaqFpxf9xFfpXXcNKpRBdO0GArrzJRe"
u.save!

u = User.new
u.email = "lance@lancejordan.com"
u.password = temp_password
u.password_confirmation = temp_password
u.save!
u.encrypted_password = "$2a$10$li64VZoG/7KODAJN//iEfu2GVWPuAqaXq88x5sGI5bjED.2R21gie"
u.save!

Category.create!([
  {name: "Art + Culture", row_order: -7789420},
  {name: "PSA's + Commercials", row_order: 5991863},
  {name: "Fashion + Beauty", row_order: -7489827},
  {name: "Docs + Features", row_order: -3595117},
  {name: "Music", row_order: -1198372},
  {name: "Web Series", row_order: 3595118}
])

Work.create!([
  {title: "DIGITAL GRAFFITI", still_code: 436809007, video_code: "65689737", description: "", category_id: 1, host_id: nil, mobile: true, row_order: 0},
  {title: "Body Editions", still_code: 263408433, video_code: "38284909", description: "", category_id: 1, host_id: nil, mobile: true, row_order: -4194303},
  {title: "Morgan Collett for Mr. B's", still_code: 433364793, video_code: "29493016", description: "ALDO Mr B's Gentlemen's Boutique \"Morgan Collett f...", category_id: 2, host_id: nil, mobile: true, row_order: -3355442},
  {title: "Brook Klausing for Mr. B's", still_code: 433364966, video_code: "29044239", description: "ALDO Mr B's Gentlemen's Boutique \"Brook Klausing f...", category_id: 2, host_id: nil, mobile: true, row_order: -5033164},
  {title: "D'Addario NS Micro Tuner launch video", still_code: 443158695, video_code: "70084576", description: "D'Addario NS Micro Tuner launch video", category_id: 2, host_id: nil, mobile: true, row_order: -6710885},
  {title: "A Symphony of Innovation", still_code: 474338168, video_code: "91810493", description: "D'Addario presents \"A Symphony of Innovation\"", category_id: 2, host_id: nil, mobile: true, row_order: -1677721},
  {title: "La Demimondaine (Director's Cut)", still_code: 160112200, video_code: "24439706", description: "A short film directed by Sandro Suppnig\r\nEdited by ...", category_id: 3, host_id: nil, mobile: false, row_order: nil},
  {title: "Candice Swanepoel", still_code: 223677992, video_code: "32999658", description: "Candice Swanepoel by Dan Jackson for LOVE Magazine", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "Catherine Malandrino La Nuit 2012", still_code: 437040436, video_code: "39310322", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "Danhier Movie", still_code: 201929109, video_code: "30092982", description: "", category_id: 3, host_id: nil, mobile: false, row_order: nil},
  {title: "Christophe Danhier", still_code: 494481207, video_code: "110288835", description: "", category_id: 3, host_id: nil, mobile: false, row_order: nil},
  {title: "Albright Goes to School", still_code: 467370484, video_code: "88797883", description: nil, category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "BLANK CITY", still_code: 436809622, video_code: "21412515", description: "Directed by: Celine Danhier\r\nProduced by: Aviva Wishnow, Vanessa Roworth\r\nEdited by: Vanessa Roworth\r\nPremiered: Berlin 2011\r\nDistributor: Kino Lorber / Insurgent", category_id: 4, host_id: nil, mobile: true, row_order: nil},
  {title: "The Punk Singer", still_code: 494475693, video_code: "110282619", description: "Directed by: Sini Anderson\r\nProducer: Rachel Dengiz\r\nPremiered: SXSW 2013\r\nDistributor: Sundance Selects / IFC", category_id: 4, host_id: nil, mobile: true, row_order: nil},
  {title: "Medora", still_code: 494468548, video_code: "110277827", description: "Directed by: Andrew Cohn & Davy Rothbart \r\nProducer: Rachel Dengiz\r\nEditor: Vanessa Roworth\r\nPremiered: SXSW 2013\r\nDistributor: Beachside", category_id: 4, host_id: nil, mobile: true, row_order: nil},
  {title: "Talk Normal \"COVER\"", still_code: 350475148, video_code: "50412893", description: nil, category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "When the Curtain Comes Down", still_code: 494473112, video_code: "110283138", description: "Directed by: Jo Andres\r\nProducer: Rachel Dengiz", category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "Backroom Students \"TAKE ME\"", still_code: 350478456, video_code: "34645427", description: "", category_id: 5, host_id: nil, mobile: false, row_order: nil},
  {title: "Janka Nabay and the Bubu Gang -- \"Somebody\"", still_code: 337910206, video_code: "48979333", description: nil, category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "Yeah Yeah Yeahs Mosquito Teaser 1", still_code: 396698724, video_code: "57245714", description: nil, category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "Yeah Yeah Yeahs Mosquito Teaser 2", still_code: 436809366, video_code: "59086410", description: nil, category_id: 5, host_id: nil, mobile: true, row_order: 0},
  {title: "Yeah Yeah Yeahs Mosquito Teaser 3", still_code: 435039504, video_code: "62474863", description: nil, category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "The Raconteurs - Steady, As She Goes", still_code: 494475769, video_code: "110284141", description: "Directed by: Jim Jarmusch\r\nProduction Associate: Rachel Dengiz", category_id: 5, host_id: nil, mobile: true, row_order: nil},
  {title: "Sophie Auster - Run Run Run", still_code: 494473498, video_code: "110283439", description: "", category_id: 5, host_id: nil, mobile: false, row_order: nil},
  {title: "Bench Rivalry | Ep. 1 | Park Bench", still_code: nil, video_code: "S3RYW54aCkg", description: "Directed by: Steve Buscemi\r\nProduced by: Olive Productions and Radical Media\r\nCo-producer: Rachel Dengiz", category_id: 6, host_id: 2, mobile: false, row_order: nil},
  {title: "LOVE Advent Calendar 2014 Day 2: Lily Aldridge directed by Daniel Jackson", still_code: 500286129, video_code: "114568695", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "LOVE Advent Calendar 2014 Day 6: Liu Wen directed by Daniel Jackson", still_code: 503527521, video_code: "116983917", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "LOVE Advent Calendar 2014 Day 9: Hailey Baldwin directed by Daniel Jackson ", still_code: 503525533, video_code: "116981195", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "LOVE Advent Calendar 2014 Day 22: Gigi Hadid directed by Daniel Jackson", still_code: 503524668, video_code: "116981043", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "LOVE Advent Calendar 2014 Day 24: Adriana Lima directed by Daniel Jackson", still_code: 503525101, video_code: "116980773", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "VERAMEAT Jewelry Holiday Promo", still_code: 503528458, video_code: "115355034", description: "", category_id: 3, host_id: nil, mobile: true, row_order: nil},
  {title: "VOGUE China", still_code: 503530489, video_code: "116985406", description: "Behind the Scenes with Du Juan \r\nFebruary 2015 Issue ", category_id: 3, host_id: nil, mobile: true, row_order: nil}
])

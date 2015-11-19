namespace :admin do
  desc "ADD NEW VIDEOS TO WORKS"
  task add_videos: :environment do
    array = [
    {
    category_id: 3,
    video_code: 142696282,
    title: '“HOW A FASHION FILM IS MADE” featuring Santiago & Mauricio for i-D and Microsoft,',
    description: "Director: Celine Danhier
          Featuring: Grace Bol, Hari Nef, Lili Sumner, Molly Blair
          Production & Post: Bunny Lake Films"},

    {category_id: 3,
    video_code: 142697508,
    title: 'BROOKS BROTHERS SPRING/SUMMER 16 featuring Zac Posen and Cindy Bruna',
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'},

    {
    category_id: 3,
    video_code: 142697754,
    title: 'TRULY Zac Posen Collection for Helzberg Diamonds',
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'},
    {
    category_id: 3,
    title: 'BEAUTYLISH: MILA MOURSI',
    video_code: 142699833,
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'
    },
    {category_id: 3,
    video_code: 142699078,
    title: 'OROTON SPRING/SUMMER 15/16 featuring ROSE BYRNE interview',
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'
    },
    {category_id: 3,
    video_code: 142698680,
    title: 'OROTON SPRING/SUMMER 15/16 featuring ROSE BYRNE',
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'},
    {category_id: 3,
    video_code: 142698235,
    title: 'ASAF GANOT SPRING/SUMMER 16 BTS NYFW',
    description: 'Production & Post: Bunny Lake Films'},

    {category_id: 3,
    video_code: 142698414,
    title: 'ASAF GANOT SPRING/SUMMER 16 Runway NYFW',
    description: 'Production & Post: Bunny Lake Films'},

    {category_id: 3,
    title: 'VOGUE Germany March 2015 Issue',
    video_code: 115934173,
    description: 'Photographer: Dan Jackson
    Featuring: Anna Ewers
    Director: Celine Danhier
    Production & Post: Bunny Lake Films'},

    {category_id: 3,
    title: 'TEEN VOGUE September 2015 Cover Shoot featuring Ansel Elgort',
    video_code: 142697410,
    description: 'Photographer: Boo George
    Director: Celine Danhier
    Production & Post: Bunny Lake Films'},

    {category_id: 3,
    title: 'TEEN VOGUE “Dancing Through the Decades” featuring Ansel Elgort',
    video_code: 142698027,
    description: 'Director: Celine Danhier
    Production & Post: Bunny Lake Films'},

    {category_id: 3,
    title: 'AT LARGE MAGAZINE',
    video_code: 142696535,
    description: 'Photographer: Boo George
    Production & Post: Bunny Lake Films'
    },

    {category_id: 3,
    title: 'LOVE Magazine & Hillier London',
    video_code: 142699468,
    description: 'Directed by: Dan Jackson
    Featuring: Emily Ratajkowski, Hannah Davis, Mica Arganaraz
    Post: Bunny Lake Films'},

    {category_id: 1,
    title: 'TAKASHI MURAKAMI x FRISK MINTS',
    video_code: 133868826,
    description: 'Director: Guillaume Ziccarelli
    Production & Post: Bunny Lake Films'},

    {category_id: 2,
    title: 'Animals Asia – “SAVE THE MOON BEARS” Campaign',
    video_code: 142696821,
    description: 'Director: Shaina Danziger
    Featuring: Ozzy & Sharon Osbourne, Matt Lucas, Moby, Anthony Kiedis, Duff McKagan, Steve-O
    Post: Bunny Lake Films'}
    ]

    array.each do |item|
      work = Work.new(item)
      work.mobile = true
      next unless work.save
    end

  end

  desc "ADD WORK STATUSES TO WORK_STATUS MODEL"
  task add_work_statuses: :environment do
    WorkStatus.create!([
      {name: 'Development'},
      {name: 'Production/Post'},
      {name: 'Completed'}
    ])
  end

end

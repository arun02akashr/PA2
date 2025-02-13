# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  { title: "The Godfather", rating: "R", description: "Mafia family drama", release_date: "1972-03-24" },
  
  { title: "Inception", rating: "PG-13", description: "Dream within a dream", release_date: "2010-07-16" },
  
  { title: "Titanic", rating: "PG-13", description: "Love story on the Titanic", release_date: "1997-12-19" },
  
  { title: "The Matrix", rating: "R", description: "Virtual reality revolution", release_date: "1999-03-31" },
  
  { title: "Interstellar", rating: "PG-13", description: "Space travel through wormholes", release_date: "2014-11-07" }
]

more_movies.each do |movie|
    Movie.find_or_create_by(title: movie[:title]) do |m|
      m.rating = movie[:rating]
      m.description = movie[:description]
      m.release_date = movie[:release_date]
    end
end
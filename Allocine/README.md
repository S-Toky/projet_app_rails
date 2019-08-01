film2:
film2 = Movie.create(name: "L'exorciste", year: 2001, genre: "Epouvante-horreur", synopsis: "L'actrice Chris McNeil est inquiète au sujet de sa fillette Regan : après que l'on ait entendu des bruits curieux venant de sa chambre, la petite a changé, proférant de constantes insanités. Une force para-normale l'habite, qui coûte la vie au metteur en scène de Chris. Désespérée, cette dernière fait appel à deux exorcistes...", director: "William Friedkin", allocine_rating: 3.9, already_seen: false)


film3:
2.5.1 :002 > film3 = Movie.create(name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Tout le monde se méfie de tout le monde, tout le monde complote contre tout le monde : Anglais, Français, Soviétiques, la famille du Roi déchu Farouk qui veut retrouver son trône, les Aigles de Kheops, secte religieuse qui veut prendre le pouvoir. Le Président de la République Française, Monsieur René Coty, envoie son arme maîtresse mettre de l'ordre dans cette pétaudière au bord du chaos : Hubert Bonisseur de la Bath, dit OSS 117.", director: "Michel Hazanavicius", allocine_rating: 3.5, already_seen: true)

film4:
film4 = Movie.create(name: "AVENGERS: ENDGAME", year: 2019, genre: "Action, Fantastique, Aventure", synopsis: "Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.", director: "Joe Russo, Anthony Russo", allocine_rating: 4.3, my_rating: 4, already_seen: true)

allocine_rating film1 changed
2.5.1 :006 > film1 = Movie.find(1)
  Movie Load (0.4ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
 => #<Movie id: 1, name: "Beowulf", year: 1999, genre: "Fantastique, Action, Epouvante-horreur", synopsis: "La Terre a traverse de nombreuses crises et catacl...", director: "Graham Baker", allocine_rating: 1.2, my_rating: nil, already_seen: false, created_at: "2019-08-01 07:08:04", updated_at: "2019-08-01 07:08:04"> 
2.5.1 :007 > film1.allocine_rating = 4.7
 => 4.7 
 2.5.1 :008 > film1.save

 changement du "already_seen" de "false" en "true"
  Movie.find(id).update(already_seen: true)

  mon film: 
  mon_film = Movie.find(22, 33, 7,55,77, 100, 67, 45, 99, 49)
  Movie Load (0.6ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)  [["id", 22], ["id", 33], ["id", 7], ["id", 55], ["id", 77], ["id", 100], ["id", 67], ["id", 45], ["id", 99], ["id", 49]]


genre changed film2
film2 = Movie.find(2)
  Movie Load (0.3ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
 => #<Movie id: 2, name: "L'exorciste", year: 2001, genre: "Epouvante-horreur", synopsis: "L'actrice Chris McNeil est inquiète au sujet de sa...", director: "William Friedkin", allocine_rating: 3.9, my_rating: nil, already_seen: false, created_at: "2019-08-01 07:36:43", updated_at: "2019-08-01 07:36:43"> 
2.5.1 :010 > film2.update(genre: "comedie")

compter les film déjà vu
film = Movie.where(already_seen: true)
  Movie Load (0.4ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."already_seen" = ? LIMIT ?  [["already_seen", 1], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Movie id: 3, name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Tout le monde se méfie de tout le monde, tout le m...", director: "Michel Hazanavicius", allocine_rating: 3.5, my_rating: nil, already_seen: true, created_at: "2019-08-01 07:48:28", updated_at: "2019-08-01 07:48:28">, #<Movie id: 4, name: "AVENGERS: ENDGAME", year: 2019, genre: "Action, Fantastique, Aventure", synopsis: "Thanos ayant anéanti la moitié de l’univers, les A...", director: "Joe Russo, Anthony Russo", allocine_rating: 4.3, my_rating: 4, already_seen: true, created_at: "2019-08-01 08:12:00", updated_at: "2019-08-01 08:12:00">]> 
2.5.1 :013 > film.count
   (0.6ms)  SELECT COUNT(*) FROM "movies" WHERE "movies"."already_seen" = ?  [["already_seen", 1]]
 => 2 
2.5.1 

destroy a table 
film3 = Movie.find(3)
  Movie Load (0.3ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
 => #<Movie id: 3, name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Tout le monde se méfie de tout le monde, tout le m...", director: "Michel Hazanavicius", allocine_rating: 3.5, my_rating: nil, already_seen: true, created_at: "2019-08-01 07:48:28", updated_at: "2019-08-01 07:48:28"> 
2.5.1 :002 > film4 = Movie.find(4)
  Movie Load (0.4ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
 => #<Movie id: 4, name: "AVENGERS: ENDGAME", year: 2019, genre: "Action, Fantastique, Aventure", synopsis: "Thanos ayant anéanti la moitié de l’univers, les A...", director: "Joe Russo, Anthony Russo", allocine_rating: 4.3, my_rating: 4, already_seen: true, created_at: "2019-08-01 08:12:00", updated_at: "2019-08-01 08:12:00"> 
2.5.1 :003 > film.count
Traceback (most recent call last):
        1: from (irb):3
NameError (undefined local variable or method `film' for main:Object)
Did you mean?  film3
               film4
2.5.1 :004 > film = Movie.where(already_seen: true)
  Movie Load (0.8ms)  SELECT  "movies".* FROM "movies" WHERE "movies"."already_seen" = ? LIMIT ?  [["already_seen", 1], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Movie id: 3, name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Tout le monde se méfie de tout le monde, tout le m...", director: "Michel Hazanavicius", allocine_rating: 3.5, my_rating: nil, already_seen: true, created_at: "2019-08-01 07:48:28", updated_at: "2019-08-01 07:48:28">, #<Movie id: 4, name: "AVENGERS: ENDGAME", year: 2019, genre: "Action, Fantastique, Aventure", synopsis: "Thanos ayant anéanti la moitié de l’univers, les A...", director: "Joe Russo, Anthony Russo", allocine_rating: 4.3, my_rating: 4, already_seen: true, created_at: "2019-08-01 08:12:00", updated_at: "2019-08-01 08:12:00">]> 
2.5.1 :005 > film.count
   (0.5ms)  SELECT COUNT(*) FROM "movies" WHERE "movies"."already_seen" = ?  [["already_seen", 1]]
 => 2 
2.5.1 :006 > film3.destroy
   (0.2ms)  begin transaction
  Movie Destroy (0.9ms)  DELETE FROM "movies" WHERE "movies"."id" = ?  [["id", 3]]
   (84.3ms)  commit transaction
 => #<Movie id: 3, name: "OSS 117, LE CAIRE NID D'ESPIONS", year: 2006, genre: "Comédie, Action, Espionnage", synopsis: "Tout le monde se méfie de tout le monde, tout le m...", director: "Michel Hazanavicius", allocine_rating: 3.5, my_rating: nil, already_seen: true, created_at: "2019-08-01 07:48:28", updated_at: "2019-08-01 07:48:28"> 

 tp affiche
 tp Movie.limit(3), "name", "genre", "director"
  Movie Load (0.3ms)  SELECT  "movies".* FROM "movies" LIMIT ?  [["LIMIT", 3]]
NAME              | GENRE                          | DIRECTOR                
------------------|--------------------------------|-------------------------
Beowulf           | Fantastique, Action, Epouva... | Graham Baker            
L'exorciste       | comedie                        | William Friedkin        
AVENGERS: ENDGAME | Action, Fantastique, Aventure  | Joe Russo, Anthony Russo
 => 0.001859269 


nombre total de l'Album
 Album.count
   (0.2ms)  SELECT COUNT(*) FROM "albums"
 => 347 

 l'auteur de la chanson "White Room"
 Track.find_by(title: "White Room")
  Track Load (1.1ms)  SELECT  "tracks".* FROM "tracks" WHERE "tracks"."title" = ? LIMIT ?  [["title", "White Room"], ["LIMIT", 1]]
 => #<Track id: 505, title: "White Room", album: "The Cream Of Clapton", artist: "Eric Clapton", duration: 301583, size: 9872606, price: 0.99, created_at: "2019-08-01 18:22:56", updated_at: "2019-08-01 18:22:56">

 la chanson qui dure 188133 millisecond
  Track.where(duration: 188133)
  Track Load (0.3ms)  SELECT  "tracks".* FROM "tracks" WHERE "tracks"."duration" = ? LIMIT ?  [["duration", 188133], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Track id: 40, title: "Perfect", album: "Jagged Little Pill", artist: "Alanis Morissette", duration: 188133, size: 6145404, price: 0.99, created_at: "2019-08-01 18:22:08", updated_at: "2019-08-01 18:22:08">]>

 la groupe qui a sorti l'album "Use Your Illusion II"
 Album.find_by(title: "Use Your Illusion II")
  Album Load (0.6ms)  SELECT  "albums".* FROM "albums" WHERE "albums"."title" = ? LIMIT ?  [["title", "Use Your Illusion II"], ["LIMIT", 1]]
 => #<Album id: 92, title: "Use Your Illusion II", artist: "Guns N Roses", created_at: "2019-08-01 18:21:35", updated_at: "2019-08-01 18:21:35"> 

 le nombre d'album dans le titre contient "Great"
 number = Album.where("title LIKE ?", "%Great%")
  Album Load (1.3ms)  SELECT  "albums".* FROM "albums" WHERE (title LIKE '%Great%') LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Album id: 36, title: "Greatest Hits II", artist: "Queen", created_at: "2019-08-01 18:21:29", updated_at: "2019-08-01 18:21:29">, #<Album id: 37, title: "Greatest Kiss", artist: "Kiss", created_at: "2019-08-01 18:21:29", updated_at: "2019-08-01 18:21:29">, #<Album id: 67, title: "Vault: Def Leppards Greatest Hits", artist: "Def Leppard", created_at: "2019-08-01 18:21:32", updated_at: "2019-08-01 18:21:32">, #<Album id: 141, title: "Greatest Hits", artist: "Lenny Kravitz", created_at: "2019-08-01 18:21:40", updated_at: "2019-08-01 18:21:40">, #<Album id: 162, title: "Motley Crue Greatest Hits", artist: "Mötley Crüe", created_at: "2019-08-01 18:21:42", updated_at: "2019-08-01 18:21:42">, #<Album id: 185, title: "Greatest Hits I", artist: "Queen", created_at: "2019-08-01 18:21:44", updated_at: "2019-08-01 18:21:44">, #<Album id: 202, title: "Rotten Apples: Greatest Hits", artist: "Smashing Pumpkins", created_at: "2019-08-01 18:21:46", updated_at: "2019-08-01 18:21:46">, #<Album id: 215, title: "The Police Greatest Hits", artist: "The Police", created_at: "2019-08-01 18:21:47", updated_at: "2019-08-01 18:21:47">, #<Album id: 286, title: "Great Opera Choruses", artist: "Chicago Symphony Chorus, Chicago Symphony Orchestr...", created_at: "2019-08-01 18:21:57", updated_at: "2019-08-01 18:21:57">, #<Album id: 294, title: "Great Performances - Barbers Adagio and Other Roma...", artist: "Leonard Bernstein & New York Philharmonic", created_at: "2019-08-01 18:21:57", updated_at: "2019-08-01 18:21:57">, ...]> 
2.5.1 :016 > number.count
   (0.7ms)  SELECT COUNT(*) FROM "albums" WHERE (title LIKE '%Great%')
 => 13 

supprimer tous les albums dans le titre contient "music"
suppr = Album.where("title LIKE ?", "%music")
  Album Load (0.7ms)  SELECT  "albums".* FROM "albums" WHERE (title LIKE '%music') LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Album id: 346, title: "Mozart: Chamber Music", artist: "Nash Ensemble", created_at: "2019-08-01 18:22:04", updated_at: "2019-08-01 18:22:04">]> 
2.5.1 :018 > suppr.count
   (0.9ms)  SELECT COUNT(*) FROM "albums" WHERE (title LIKE '%music')
 => 1 
2.5.1 :020 > suppr = Album.find(346)
  Album Load (0.3ms)  SELECT  "albums".* FROM "albums" WHERE "albums"."id" = ? LIMIT ?  [["id", 346], ["LIMIT", 1]]
 => #<Album id: 346, title: "Mozart: Chamber Music", artist: "Nash Ensemble", created_at: "2019-08-01 18:22:04", updated_at: "2019-08-01 18:22:04"> 
2.5.1 :021 > suppr.destroy
   (0.2ms)  begin transaction
  Album Destroy (1.7ms)  DELETE FROM "albums" WHERE "albums"."id" = ?  [["id", 346]]
   (71.2ms)  commit transaction
 => #<Album id: 346, title: "Mozart: Chamber Music", artist: "Nash Ensemble", created_at: "2019-08-01 18:22:04", updated_at: "2019-08-01 18:22:04">

 les albums écrit par AC/DC
 numberAC = Album.where("artist LIKE ?", "AC/DC")
  Album Load (0.8ms)  SELECT  "albums".* FROM "albums" WHERE (artist LIKE 'AC/DC') LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Album id: 1, title: "For Those About To Rock We Salute You", artist: "AC/DC", created_at: "2019-08-01 18:21:25", updated_at: "2019-08-01 18:21:25">, #<Album id: 4, title: "Let There Be Rock", artist: "AC/DC", created_at: "2019-08-01 18:21:25", updated_at: "2019-08-01 18:21:25">]> 
2.5.1 :023 > numberAC.count
   (0.6ms)  SELECT COUNT(*) FROM "albums" WHERE (artist LIKE 'AC/DC')
 => 2

 les chanson qui durent exactement 158589 millisecondes 
 dur = Track.find_by(duration: 158589)
  Track Load (0.5ms)  SELECT  "tracks".* FROM "tracks" WHERE "tracks"."duration" = ? LIMIT ?  [["duration", 158589], ["LIMIT", 1]]
 => nil 

 tout les titre d'AC/DC
 titre = Track.where(artist: "AC/DC")
  titre.length.times do |i|
2.5.1 :017 >     puts titre[i].title
2.5.1 :018?>   end
For Those About To Rock (We Salute You)
Put The Finger On You
Lets Get It Up
Inject The Venom
Snowballed
Evil Walks
C.O.D.
Breaking The Rules
Night Of The Long Knives
Spellbound
Go Down
Dog Eat Dog
Let There Be Rock
Bad Boy Boogie
Problem Child
Overdose
Hell Aint A Bad Place To Be
Whole Lotta Rosie
 => 18 

 titre de l'album "Let here Be Rock"
 titr = Track.where(Album: "Let There Be Rock")
 titr.length.times do |i|
2.5.1 :024 >     puts titr[i].title
2.5.1 :025?>   end
Go Down
Dog Eat Dog
Let There Be Rock
Bad Boy Boogie
Problem Child
Overdose
Hell Aint A Bad Place To Be
Whole Lotta Rosie
 => 8 

 le prix total de cette album 
  total = 0
 => 0 
2.5.1 :028 > titr.length.times do |i|
2.5.1 :029 >     total += titr[i].price
2.5.1 :030?>   end
 => 8 
2.5.1 :031 > puts total
7.920000000000001
 => nil

le total de la duration
titr.length.times do |i|
2.5.1 :033 >     total += titr[i].duration
2.5.1 :034?>   end
 => 8 
2.5.1 :035 > puts total
2453266.92
 => nil

 coût de l'integralité "Deep Purple"
 cout = Track.where(artist: "Deep Purple")
 total = 0
 => 0 
2.5.1 :038 > cout.length.times do |i|
2.5.1 :039 >     total += cout[i].price
2.5.1 :040?>   end
  Track Load (1.9ms)  SELECT "tracks".* FROM "tracks" WHERE "tracks"."artist" = ?  [["artist", "Deep Purple"]]
 => 91 
2.5.1 :041 > puts total
90.0899999999999
 => nil 

 Modification de tous le titre d'Eric Clapton en Britney Spears
 artis = Track.where(artist: "Eric Clapton")
 artis.length.times do |i|
2.5.1 :044 >     artis[i].update(title: artis[i].title+ "Britney Spears")
2.5.1 :045?>   end

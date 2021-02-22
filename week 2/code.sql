// Creating tables
Table movie as U {
  movie_id int [pk, increment] // auto-increment
  title varchar
  year timestamp
  length int
  plot_line varchar
  prodcomp_id int

}

Table person{
  person_id int[pk]
  movie_id int
  name varchar
  dob date
 }
Table director{
  dir_id int[pk]
 }
 
 Table actor{
  actor_id int[pk]
 }
 
Table prod_comp {
  prodcomp_id int [pk]
  name varchar
  address varchar
  
}

Table quote {
  movie_id int
  person_id int
  quote varchar
}

Table genre {
  movie_id int
  genre_name varchar
}

//Linking tables

Ref: "movie"."movie_id" < "person"."movie_id"

Ref: "movie"."movie_id" < "quote"."movie_id"

Ref: "movie"."prodcomp_id" < "prod_comp"."prodcomp_id"

Ref: "director"."dir_id" < "person"."person_id"

Ref: "actor"."actor_id" < "person"."person_id"

Ref: "quote"."person_id" < "person"."person_id"

Ref: "movie"."movie_id" < "genre"."movie_id"

//Done by:
//Igor Mpore BS19-06
//Mohammad Khalil BS19-05s

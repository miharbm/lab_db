ALTER TABLE "Sessions" ADD CONSTRAINT "Sessions_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");
ALTER TABLE "Sessions" ADD CONSTRAINT "Sessions_fk1" FOREIGN KEY ("hall_id") REFERENCES "Halls"("id");
ALTER TABLE "Sessions" ADD CONSTRAINT "Sessions_unique" UNIQUE(hall_id, time),


ALTER TABLE "Halls" ADD CONSTRAINT "Halls_fk0" FOREIGN KEY ("cinema_id") REFERENCES "Cinemas"("id");


ALTER TABLE "Seats" ADD CONSTRAINT "Seats_fk0" FOREIGN KEY ("hall_id") REFERENCES "Halls"("id");

ALTER TABLE "Staff" ADD CONSTRAINT "Staff_fk0" FOREIGN KEY ("cinema_id") REFERENCES "Cinemas"("id");
ALTER TABLE "Staff" ADD CONSTRAINT "Staff_fk1" FOREIGN KEY ("position") REFERENCES "Cinemas_positions"("position");


ALTER TABLE "Pictures_movie" ADD CONSTRAINT "Pictures_movie_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");

ALTER TABLE "Movies_genres" ADD CONSTRAINT "Movies_genres_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");
ALTER TABLE "Movies_genres" ADD CONSTRAINT "Movies_genres_fk1" FOREIGN KEY ("genres_name") REFERENCES "Genres"("name");


ALTER TABLE "Tickets" ADD CONSTRAINT "Tickets_fk0" FOREIGN KEY ("seat_id") REFERENCES "Seats"("id");
ALTER TABLE "Tickets" ADD CONSTRAINT "Tickets_fk1" FOREIGN KEY ("session_id") REFERENCES "Sessions"("id");
ALTER TABLE "Tickets" ADD CONSTRAINT "Tickets_fk2" FOREIGN KEY ("order_id") REFERENCES "Orders"("id");


ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("customer_id") REFERENCES "Customers"("id");


ALTER TABLE "Films_crews" ADD CONSTRAINT "Films_crews_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");
ALTER TABLE "Films_crews" ADD CONSTRAINT "Films_crews_fk1" FOREIGN KEY ("member_id") REFERENCES "Film_crew_members"("id");


ALTER TABLE "Prime_nominations" ADD CONSTRAINT "Prime_nominations_fk0" FOREIGN KEY ("nominee_id") REFERENCES "Nominees"("id");
ALTER TABLE "Prime_nominations" ADD CONSTRAINT "Prime_nominations_fk1" FOREIGN KEY ("prime_id") REFERENCES "Primes"("id");

ALTER TABLE "Nominees" ADD CONSTRAINT "Nominees_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");
ALTER TABLE "Nominees" ADD CONSTRAINT "Nominees_fk1" FOREIGN KEY ("film_crew_members_id") REFERENCES "Film_crew_members"("id");

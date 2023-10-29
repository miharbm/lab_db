ALTER TABLE "public.Sessions" ADD CONSTRAINT "Sessions_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.Movies"("id");
ALTER TABLE "public.Sessions" ADD CONSTRAINT "Sessions_fk1" FOREIGN KEY ("hall_id") REFERENCES "public.Halls"("id");
ALTER TABLE "public.Sessions" ADD CONSTRAINT "Sessions_unique" UNIQUE(hall_id, time_start);


ALTER TABLE "public.Halls" ADD CONSTRAINT "Halls_fk0" FOREIGN KEY ("cinema_id") REFERENCES "public.Cinemas"("id");


ALTER TABLE "public.Seats" ADD CONSTRAINT "Seats_fk0" FOREIGN KEY ("hall_id") REFERENCES "public.Halls"("id");
ALTER TABLE "public.Seats" ADD CONSTRAINT "Seats_unique" UNIQUE(row, place);

ALTER TABLE "public.Staff" ADD CONSTRAINT "Staff_fk0" FOREIGN KEY ("cinema_id") REFERENCES "public.Cinemas"("id");
ALTER TABLE "public.Staff" ADD CONSTRAINT "Staff_fk1" FOREIGN KEY ("position") REFERENCES "public.Cinemas_positions"("position");


ALTER TABLE "public.Pictures_movie" ADD CONSTRAINT "Pictures_movie_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.Movies"("id");

ALTER TABLE "public.Movies_genres" ADD CONSTRAINT "Movies_genres_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.Movies"("id");
ALTER TABLE "public.Movies_genres" ADD CONSTRAINT "Movies_genres_fk1" FOREIGN KEY ("genres_id") REFERENCES "public.Genres"("id");


ALTER TABLE "public.Tickets" ADD CONSTRAINT "Tickets_fk0" FOREIGN KEY ("seat_id") REFERENCES "public.Seats"("id");
ALTER TABLE "public.Tickets" ADD CONSTRAINT "Tickets_fk1" FOREIGN KEY ("session_id") REFERENCES "public.Sessions"("id");
ALTER TABLE "public.Tickets" ADD CONSTRAINT "Tickets_fk2" FOREIGN KEY ("order_id") REFERENCES "public.Orders"("id");
ALTER TABLE "public.Tickets" ADD CONSTRAINT "Tickets_unique" UNIQUE(seat_id, session_id);

ALTER TABLE "public.Orders" ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("customer_id") REFERENCES "public.Customers"("id");

ALTER TABLE "public.Payment"  ADD CONSTRAINT "Payment_fk0" FOREIGN KEY ("order_id") REFERENCES "public.Orders"("id");

ALTER TABLE "public.Films_positions" ADD CONSTRAINT "Films_positions_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.Movies"("id");
ALTER TABLE "public.Films_positions" ADD CONSTRAINT "Films_positions_fk1" FOREIGN KEY ("member_id") REFERENCES "public.Film_crew_members"("id");


ALTER TABLE "public.Prime_nominations" ADD CONSTRAINT "Prime_nominations_fk0" FOREIGN KEY ("nominee_id") REFERENCES "public.Nominees"("id");
ALTER TABLE "public.Prime_nominations" ADD CONSTRAINT "Prime_nominations_fk1" FOREIGN KEY ("prime_id") REFERENCES "public.Primes"("id");

ALTER TABLE "public.Nominees" ADD CONSTRAINT "Nominees_fk0" FOREIGN KEY ("movie_id") REFERENCES "public.Movies"("id");
ALTER TABLE "public.Nominees" ADD CONSTRAINT "Nominees_fk1" FOREIGN KEY ("film_crew_members_id") REFERENCES "public.Film_crew_members"("id");

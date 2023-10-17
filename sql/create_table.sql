CREATE TABLE "public.Movies" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"realease_date" DATE(255),
	"duration" TIME(255) NOT NULL,
	"mpaa" varchar(255),
	"rating" double(255),
	"kp_id" varchar(255),
	"description" TEXT,
	CONSTRAINT "Movies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Sessions" (
	"id" serial NOT NULL,
	"movie_id" serial NOT NULL,
	"time" TIME NOT NULL,
	"hall_id" integer NOT NULL,
	CONSTRAINT "Sessions_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Halls" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"type" varchar(255),
	"cinema_id" integer(255) NOT NULL,
	CONSTRAINT "Halls_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cinemas" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL UNIQUE,
	"location" varchar(255) UNIQUE,
	"contact" varchar(255),
	CONSTRAINT "Cinemas_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Seats" (
	"id" serial NOT NULL,
	"row" integer NOT NULL,
	"place" integer NOT NULL,
	"hall_id" integer NOT NULL,
	CONSTRAINT "Seats_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Staff" (
	"id" serial NOT NULL,
	"cinema_id" integer NOT NULL,
	"position" integer NOT NULL,
	"login" varchar(255) NOT NULL UNIQUE,
	"password" varchar(255) NOT NULL UNIQUE,
	"birthday" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL UNIQUE,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Staff_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Cinemas_positions" (
	"position" serial(255) NOT NULL UNIQUE,
	CONSTRAINT "Cinemas_positions_pk" PRIMARY KEY ("position")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Pictures_movie" (
	"id" serial NOT NULL,
	"movie_id" integer NOT NULL,
	"isMain" BOOLEAN NOT NULL DEFAULT 'false',
	"ref" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "Pictures_movie_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Movies_genres" (
	"movie_id" integer NOT NULL,
	"genres_name" varchar(255) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Genres" (
	"name" serial(255) NOT NULL,
	CONSTRAINT "Genres_pk" PRIMARY KEY ("name")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Tickets" (
	"id" serial NOT NULL,
	"seat_id" integer NOT NULL,
	"session_id" integer NOT NULL,
	"price" integer NOT NULL,
	"order_id" integer NOT NULL,
	CONSTRAINT "Tickets_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Customers" (
	"id" serial NOT NULL,
	"name" varchar(255),
	"birthday" DATE(255),
	"avatar_ref" varchar(255) UNIQUE,
	"phone" varchar(255) UNIQUE,
	"mail" varchar(255) UNIQUE,
	"password" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "Customers_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Orders" (
	"id" serial NOT NULL,
	"customer_id" integer NOT NULL,
	"payment_time" TIMESTAMP,
	CONSTRAINT "Orders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Film_crew_members" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Film_crew_members_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Films_crews" (
	"id" serial NOT NULL,
	"movie_id" integer NOT NULL,
	"member_id" integer NOT NULL,
	"position" varchar(255) NOT NULL,
	CONSTRAINT "Films_crews_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Primes" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "Primes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Prime_nominations" (
	"id" serial NOT NULL,
	"nominee_id" integer NOT NULL,
	"prime_id" serial NOT NULL,
	"nominaiton" varchar(255) NOT NULL,
	"description" TEXT(255),
	"year" integer(255),
	"isWon" BOOLEAN NOT NULL DEFAULT 'false',
	CONSTRAINT "Prime_nominations_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Nominees" (
	"id" serial NOT NULL,
	"movie_id" integer NOT NULL,
	"film_crew_members_id" integer NOT NULL,
	CONSTRAINT "Nominees_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Sessions" ADD CONSTRAINT "Sessions_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movies"("id");
ALTER TABLE "Sessions" ADD CONSTRAINT "Sessions_fk1" FOREIGN KEY ("hall_id") REFERENCES "Halls"("id");

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









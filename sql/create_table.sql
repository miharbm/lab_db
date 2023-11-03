CREATE TABLE IF NOT EXISTS "public.Movies" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"release_date" DATE,
	"duration" TIME NOT NULL,
	"mpaa" varchar(10),
	"rating" float4,
	"kp_id" varchar(255),
	"description" TEXT,
	CONSTRAINT "Movies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Sessions" (
	"id" serial NOT NULL,
	"movie_id" serial NOT NULL ,
	"time_start" TIMESTAMP NOT NULL,
	"time_end" TIMESTAMP NOT NULL,
	"hall_id" integer NOT NULL,
	CONSTRAINT "Sessions_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Halls" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"type" varchar(255),
	"cinema_id" integer NOT NULL,
	CONSTRAINT "Halls_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Cinemas" (
	"id" serial NOT NULL,
	"name" varchar(50) NOT NULL UNIQUE,
	"location" varchar(255) UNIQUE,
	"phone" integer,
	CONSTRAINT "Cinemas_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Seats" (
	"id" serial NOT NULL,
	"row" smallint NOT NULL,
	"place" smallint NOT NULL,
	"hall_id" integer NOT NULL,
	CONSTRAINT "Seats_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Staff" (
	"id" serial NOT NULL,
	"cinema_id" integer NOT NULL,
	"position_id" integer NOT NULL,
	"login" varchar(20) NOT NULL UNIQUE,
	"password" varchar(255) NOT NULL,
	"birthday" DATE NOT NULL,
	"email" varchar(255) NOT NULL UNIQUE,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Staff_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Cinemas_positions" (
	"id" serial NOT NULL,
	"position" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "Cinemas_positions_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Pictures_movie" (
	"id" serial NOT NULL,
	"movie_id" integer NOT NULL,
	"isMain" BOOLEAN NOT NULL DEFAULT 'false',
	"ref" varchar(255) NOT NULL UNIQUE,
	CONSTRAINT "Pictures_movie_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Movies_genres" (
	"movie_id" integer NOT NULL,
	"genres_id" integer NOT NULL,
	CONSTRAINT "Movies_genres_pk" PRIMARY KEY ("movie_id", "genres_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Genres" (
	"id" serial NOT NULL,
	"name" varchar(50) UNIQUE NOT NULL,
	CONSTRAINT "Genres_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Tickets" (
	"id" serial NOT NULL,
	"seat_id" integer NOT NULL,
	"session_id" integer NOT NULL,
	"price" integer NOT NULL,
	"order_id" integer NOT NULL,
	CONSTRAINT "Tickets_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Customers" (
	"id" serial NOT NULL,
	"name" varchar(255),
	"birthday" DATE,
	"avatar_ref" varchar(255) UNIQUE,
	"phone" integer UNIQUE,
	"mail" varchar(255) UNIQUE,
	"password" varchar(255) NOT NULL,
	CONSTRAINT "Customers_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Orders" (
	"id" serial NOT NULL,
	"customer_id" integer NOT NULL,
	"isBooked" BOOLEAN DEFAULT(false),
	CONSTRAINT "Orders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Payment" (
	"id" serial NOT NULL,
	"type" varchar(50) NOT NULL,
	"order_id" integer NOT NULL UNIQUE,
	"payment_time" TIMESTAMP NOT NULL,
	CONSTRAINT "Payment_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Film_crew_members" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	"birthday" DATE,
	"birthplace" varchar(255),
	"height" integer,
	CONSTRAINT "Film_crew_members_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Films_positions" (
	"id" serial NOT NULL,
	"movie_id" integer NOT NULL,
	"member_id" integer NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Films_crews_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Primes" (
	"id" serial NOT NULL,
	"name" varchar(50) NOT NULL UNIQUE,
	CONSTRAINT "Primes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Prime_nominations" (
	"id" serial NOT NULL,
	"nominee_id" integer NOT NULL,
	"prime_id" integer NOT NULL,
	"nomination" varchar(255) NOT NULL,
	"description" TEXT,
	"year" smallint NOT NULL,
	"isWon" BOOLEAN NOT NULL DEFAULT 'false',
	CONSTRAINT "Prime_nominations_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "public.Nominees" (
	"id" serial NOT NULL,
	"movie_id" integer,
	"film_crew_members_id" integer,
	CONSTRAINT "Nominees_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

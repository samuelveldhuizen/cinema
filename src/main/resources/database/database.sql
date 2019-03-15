create table movie (
	id int not null auto_increment,
	name varchar(200) not null,
	release_date date not null,
	description text not null,
	wiki text,
	image blob,
	trailer_url varchar(200),
	actors text,
	director text,
	version int not null default 0,
	primary key(id)
);

create table actor (
	id int not null auto_increment,
	name varchar2(200) not null,
	primary key(id)
);

create table movie_actor(
	movie_id int not null,
	actor_id int not null,
	primary key(movie_id, actor_id),
	constraint fk_movie_actor_1 foreign key (movie_id) references movie(id) on delete cascade,
	constraint fk_movie_actor_2 foreign key (actor_id) references actor(id) on delete cascade
);

CREATE TABLE users
(
  id int NOT NULL auto_increment primary key,
  username character varying(60) NOT NULL,
  password character varying(20) NOT NULL,
  role character varying(20) NOT NULL,
  birth_date date,
  country character varying(60),
  enabled boolean NOT NULL,
  verification_code character varying(200),
  created_date timestamp,
  credit_card_id int
);

CREATE TABLE credit_cards (
   id int NOT NULL auto_increment,
   issuer character varying(20) NOT NULL,
   card_number character varying(20) NOT NULL
);

CREATE TABLE ratings (
	id int NOT NULL auto_increment,
	rating int NOT NULL,
	movie_id int NOT NULL,
	user_id int NOT NULL
);

insert into credit_cards(issuer,card_number) values ('VISA','xxxxxxxx');
insert into users(username,password,role,credit_card_id,enabled) values ('almir.pehratovic@gmail.com','user','ROLE_USER',1,true);
insert into users(username,password,role,credit_card_id,enabled) values ('user','user','ROLE_USER',null,true);
insert into users(username,password,role,credit_card_id,enabled) values ('admin','admin','ROLE_ADMIN',null,true);

insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Jurassic World','2015-07-10','A new theme park is built on the original site of Jurassic Park. Everything is going well until the park''s newest attraction--a genetically modified giant stealth killing machine--escapes containment and goes on a killing spree.',file_read('src/main/resources/database/images/jurassic.jpg'),'https://www.youtube.com/watch?v=RFinNxS5KN4','Chris Pratt, Bryce Dallas Howard, Irrfan Khan, Vincent D''Onofrio','Colin Trevorrow','Jurassic World is a 2015 American science fiction adventure film directed by Colin Trevorrow, written by Rick Jaffa & Amanda Silver, Derek Connolly and Trevorrow himself, and starring Chris Pratt and Bryce Dallas Howard. It is the fourth installment of the Jurassic Park series. Set twenty-two years after the events of Jurassic Park, Jurassic World takes place on the same fictional island of Isla Nublar, where a fully functioning dinosaur theme park has operated for ten years. The park plunges into chaos when a genetically modified dinosaur, Indominus rex, breaks loose and runs rampant across the park.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Fight Club','2015-07-10',' An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more...',file_read('src/main/resources/database/images/fight.jpeg'),'https://www.youtube.com/watch?v=SUXWAEX2jlg','Edward Norton, Brad Pitt, Helena Bonham Carter, Meat Loaf','David Fincher','Fight Club is a 1999 film based on the 1996 novel of the same name by Chuck Palahniuk. The film was directed by David Fincher, and stars Brad Pitt, Edward Norton and Helena Bonham Carter. Norton plays the unnamed protagonist, an "everyman" who is discontented with his white-collar job. He forms a "fight club" with soap maker Tyler Durden, played by Pitt, and they are joined by men who also want to fight recreationally. The narrator becomes embroiled in a relationship with Durden and a dissolute woman, Marla Singer, played by Bonham Carter.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Minions','2015-07-02','Minions Stuart, Kevin and Bob are recruited by Scarlet Overkill, a super-villain who, alongside her inventor husband Herb, hatches a plot to take over the world.',file_read('src/main/resources/database/images/minions.jpeg'),'https://www.youtube.com/watch?v=eisKxhjBnZ0','Sandra Bullock, Allison Janney, Jon Hamm, Michael Keaton','Kyle Balda, Pierre Coffin','Minions is a 2015 3D computer-animated family comedy film,[8] and a prequel/spin-off to the Despicable Me franchise. Produced by Illumination Entertainment for Universal Pictures, it was directed by Pierre Coffin and Kyle Balda, written by Brian Lynch, and produced by Chris Meledandri and Janet Healy.[9] The film stars Coffin (as the Minions), Sandra Bullock, Jon Hamm, Michael Keaton, Allison Janney, and Steve Coogan, and is narrated by Geoffrey Rush. It was first foreshadowed in the end credits of Despicable Me 2, where Stuart, Kevin, and Bob, three of the Minions, are seen auditioning for the film.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Home','2015-02-02','When Oh, a loveable misfit from another planet, lands on Earth and finds himself on the run from his own people, he forms an unlikely friendship with an adventurous girl named Tip who is on a quest of her own. Through a series of comic adventures with Tip, Oh comes to understand that being different and making mistakes is all part of being human. And while he changes her planet and she changes his world, they discover the true meaning of the word HOME. ',file_read('src/main/resources/database/images/home.jpg'),'https://www.youtube.com/watch?v=iLGDJkhYnVc','Jim Parsons, Rihanna, Steve Martin, Jennifer Lopez','Tim Johnson','Home is a 2015 American 3D computer-animated buddy comedy film[4] produced by DreamWorks Animation and distributed by 20th Century Fox. It is based on Adam Rex''s 2007 children''s book The True Meaning of Smekday and stars Jim Parsons, Rihanna, Jennifer Lopez, and Steve Martin. Tim Johnson is the director of the film, Chris Jenkins and Suzanne Buirgy are its producers, and the screenplay is by Tom J. Astle and Matt Ember. The story takes place on planet Earth, where an alien race called the Boov invade the planet. However, a girl named Tip manages to avoid capture, and goes on the run with Oh, a fugitive Boov.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Once Upon a Time in America','1984-09-23','A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.',file_read('src/main/resources/database/images/once.jpg'),'https://www.youtube.com/watch?v=mzhX2PD6Srw','Robert De Niro, James Woods, Elizabeth McGovern, Joe Pesci','Sergio Leone','Once Upon a Time in America is a 1984 American epic crime drama film co-written and directed by Sergio Leone and starring Robert De Niro and James Woods. It chronicles the lives of Jewish ghetto youths who rise to prominence in New York City''s world of organized crime. The film explores themes of childhood friendships, love, lust, greed, betrayal, loss, broken relationships, and the rise of mobsters in American society.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Taken 3','2015-01-21','Ex-government operative Bryan Mills is accused of a ruthless murder he never committed or witnessed. As he is tracked and pursued, Mills brings out his particular set of skills to find the true killer and clear his name.',file_read('src/main/resources/database/images/taken.jpg'),'https://www.youtube.com/watch?v=HUJZjUaNzgw','Liam Neeson, Forest Whitaker, Famke Janssen, Maggie Grace','Olivier Megaton','Taken 3 (sometimes stylized as TAK3N)[4][5] is a 2014 English-language French action film directed by Olivier Megaton and written by Luc Besson and Robert Mark Kamen. It is the third and final installment in the Taken trilogy, and the sequel to the 2008 film Taken and the 2012 film Taken 2. The film stars Liam Neeson, Forest Whitaker, Maggie Grace, and Famke Janssen.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('X-Men: Days of Future Past','2014-05-22','The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.',file_read('src/main/resources/database/images/x-men.jpg'),'https://www.youtube.com/watch?v=pK2zYHWDZKo','Hugh Jackman, James McAvoy, Michael Fassbender, Jennifer Lawrence','Bryan Singer','X-Men: Days of Future Past is a 2014 American superhero film based on the fictional X-Men characters that appear in Marvel Comics. Directed by Bryan Singer, it is the seventh installment of the X-Men film series and acts as a sequel to both 2006''s X-Men: The Last Stand and 2011''s X-Men: First Class. The story, inspired by the 1981 Uncanny X-Men storyline "Days of Future Past" by Chris Claremont and John Byrne, focuses on two time periods, with Wolverine traveling back in time to 1973 to save the future of mankind. The film features an ensemble cast, including Hugh Jackman, James McAvoy, Michael Fassbender, Jennifer Lawrence, Halle Berry, Anna Paquin, Ellen Page, Peter Dinklage, Ian McKellen, and Patrick Stewart. Simon Kinberg wrote the screenplay from a story conceived by himself, Matthew Vaughn, and Jane Goldman.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Fifty Shades of Grey','2015-02-13','Literature student Anastasia Steele''s life changes forever when she meets handsome, yet tormented, billionaire Christian Grey.',file_read('src/main/resources/database/images/50.jpg'),'https://www.youtube.com/watch?v=CQERFnGvi_A','Dakota Johnson, Jamie Dornan, Jennifer Ehle, Eloise Mumford','Sam Taylor-Johnson','Fifty Shades of Grey is a 2015 British-American erotic romantic drama film directed by Sam Taylor-Johnson with a screenplay by Kelly Marcel, based on the 2011 novel of the same name by British author E. L. James. It stars Dakota Johnson as Anastasia Steele and Jamie Dornan as Christian Grey; Steele a college graduate who begins a sadomasochistic relationship with young business magnate Grey.');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Jupiter Ascending','2015-02-06','A young woman discovers her destiny as an heiress of intergalactic nobility and must fight to protect the inhabitants of Earth from an ancient and destructive industry.',file_read('src/main/resources/database/images/jupiter.jpg'),'https://www.youtube.com/watch?v=t4ZzMkDLjWI','Mila Kunis, Channing Tatum, Sean Bean, Eddie Redmayne','Andy Wachowski, Lana Wachowski','Jupiter Ascending is a 2015 American–Australian space opera[4] film written, produced, and directed by Lana and Andy Wachowski. Starring Mila Kunis, Channing Tatum, Sean Bean and Eddie Redmayne, the film is centered on Jupiter Jones (Kunis), an ordinary cleaning woman, and Caine Wise (Tatum), an interplanetary warrior who informs Jones that her destiny extends beyond Earth. Supporting cast member Douglas Booth has described the film''s fictional universe as a cross between The Matrix and Star Wars,[5][6][7] while Kunis named indulgence[8] and consumerism as its underlying themes');
insert into movie(name,release_date,description,image,trailer_url,actors,director,wiki) values ('Braveheart','1995-05-24','When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt and leads Scottish warriors against the cruel English tyrant who rules Scotland with an iron fist.',file_read('src/main/resources/database/images/brave.jpg'),'https://www.youtube.com/watch?v=wj0I8xVTV18','Mel Gibson,James Robinson, Sean Lawlor, Sandy Nelson, James Cosmo','Mel Gibson','Braveheart is a 1995 epic historical medieval war drama film directed by and starring Mel Gibson. Gibson portrays William Wallace, a 13th-century Scottish warrior who led the Scots in the First War of Scottish Independence against King Edward I of England. The story is based on Blind Harry''s epic poem The Actes and Deidis of the Illustre and Vallyeant Campioun Schir William Wallace and was adapted for the screen by Randall Wallace.');

insert into actor(name) values ('Chris Pratt');
insert into actor(name) values ('Brad Pitt');
insert into actor(name) values ('Edward Norton');
insert into actor(name) values ('Sandra Bullock');
insert into actor(name) values ('Steve Carell');
insert into actor(name) values ('Jim Parsons');
insert into actor(name) values ('Rihanna');

insert into movie_actor(movie_id,actor_id) values (1,1);
insert into movie_actor(movie_id,actor_id) values (2,2);
insert into movie_actor(movie_id,actor_id) values (2,3);
insert into movie_actor(movie_id,actor_id) values (3,4);
insert into movie_actor(movie_id,actor_id) values (3,5);
insert into movie_actor(movie_id,actor_id) values (3,1);
insert into movie_actor(movie_id,actor_id) values (4,6);
insert into movie_actor(movie_id,actor_id) values (4,7);

insert into ratings(rating,movie_id,user_id) values(2,1,1);
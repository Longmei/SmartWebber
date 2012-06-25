insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-Weir%2C_Bob_(2007)_2.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-Carnival_Puppets.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-Opera_House_with_Sydney.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-Roy_Thomson_Hall_Toronto.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-West-stand-bmo-field.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/65660684/640px-Brazil_national_football_team_training_at_Dobsonville_Stadium_2010-06-03_13.jpg')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/AllStateFootballChampionship.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/ARhythmia.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/BattleoftheBrassBands.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/CarnivalComestoTown.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/ChrisLewisQuarterfinals.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/CrewYou.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/ExtremeSnowboardingFinals.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/FlamencoFinale.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/JesseLewisUnplugged.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/MadameButterfly.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/MimeMania.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/MorrisonCover.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/TutuTchai.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/SlapShot.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/Giantsofthegame.png')
insert into MediaItem ( mediaType, url) values ( 'IMAGE', 'http://dl.dropbox.com/u/8625587/ticketmonster/Punch%26Judy.png')


insert into Venue ( name, city, country, street, description, mediaitem_id, capacity) values ( 'Roy Thomson Hall', 'Toronto', 'Canada', '60 Simcoe Street','Roy Thomson Hall is the home of the Toronto Symphony Orchestra and the Toronto Mendelssohn Choir.',4, 11000);

insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'A', 'Premier platinum reserve',20, 100, 1);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'B', 'Premier gold reserve', 20, 100, 1);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'C', 'Premier silver reserve', 30, 100, 1);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'D', 'General', 40, 100, 1);

insert into Venue ( name, city, country, street, description, mediaitem_id, capacity) values ( 'Sydney Opera House', 'Sydney', 'Australia', 'Bennelong point', 'The Sydney Opera House is a multi-venue performing arts centre in Sydney, New South Wales, Australia' ,3, 15030);

insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S1', 'Front left', 50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S2', 'Front centre', 50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S3', 'Front right',50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S4', 'Rear left', 50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S5', 'Rear centre', 50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S6', 'Rear right', 50, 50, 2);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'S7', 'Balcony', 1, 30, 2);

insert into Venue ( name, city, country, street, description, mediaitem_id, capacity) values ( 'BMO Field', 'Toronto', 'Canada', '170 Princes Boulevard','BMO Field is a Canadian soccer stadium located in Exhibition Place in the city of Toronto.',5, 30000);

insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'A', 'Premier platinum reserve',40, 100, 3);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'B', 'Premier gold reserve', 40, 100, 3);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'C', 'Premier silver reserve', 30, 200, 3);
insert into Section ( name, description, numberofrows, rowcapacity, venue_id) values ( 'D', 'General', 80, 200, 3);


insert into EventCategory ( description) values ( 'Concert');
insert into EventCategory ( description) values ( 'Theatre');
insert into EventCategory ( description) values ( 'Musical');
insert into EventCategory ( description) values ( 'Sporting');
insert into EventCategory ( description) values ( 'Comedy');

insert into Event ( name, description, mediaitem_id, category_id) values ( 'Rock concert of the decade', 'Get ready to rock your night away with this megaconcert extravaganza from 10 of the biggest rock stars of the 80''s', 1, 1);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Shane''s Sock Puppets', 'This critically acclaimed masterpiece will take you on an emotional rollercoaster the likes of which you''ve never experienced.', 2, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Brazil vs. Italy', 'A friendly replay of the famous World Cup final.', 6, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'All State Football Championship', 'Show your colors in Friday Night Lights! Come see the Red Hot Scorpions put the sting on the winners of Sunday''s Coastal Quarterfinals for all state bragging rights. Fans entering the stadium in team color face paint will receive a $5 voucher redeemable with any on-site vendor. Body paint in lieu of clothing will not be permitted for this family friendly event.', 7, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Chris Lewis Quarterfinals', 'Every tennis enthusiast will want to see Wimbledon legend Chris Lewis as he meets archrival Deuce Wild in the quarterfinals of one of the top U.S. tournaments. Finals are already sold out, so do not miss your chance to see the real action in play on the eve of the big day!', 11, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Crew You', 'Join your fellow crew junkies and snarky, self-important collegiate know-it-alls from the nations snobbiest schools to see which team is in fact the fastest show on oars. (Or, if you like, just purchase a ticket and sport a t-shirt from your local community college just to tick them off -- this event promises to be SO much fun!)', 12, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Extreme Snowboarding Finals', 'What else is there to say? There''s snow and sun and the bravest (or craziest) guys ever to strap two feet to a board and fly off a four-story ramp of ice and snow. Who would not want to see how aerial acrobatics are being redefined by the world''s top adrenaline junkies?', 13, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Arrhythmia: Graffiti', 'Hear the sounds that have the critics abuzz. Be one of the first American audiences to experience Portuguese phenomenon Arrhythmia play all the tracks from their recently-released ''Graffiti'' -- the show includes a cameo with world-famous activist and graffiti artist Bansky.', 8, 1);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Battle of the Brass Bands', 'That''s right -- they''ve blown into town! Join the annual tri-state Battle of the Brass Bands and watch them ''gild'' the winning band''s Most Valuable Blower (MVB) -- don''t worry (and don''t inhale!); it''s only spray paint!  Vote for your best band and revel in a day of high-energy rhythms!',  9, 1);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Carnival Comes to Town', 'Sit center stage as Harlequin Ayes gives another groundbreaking theater performance in the critically acclaimed Carnival Comes to Town, a monologue re-enactment of one-woman''s despair at not being chosen to join the carnival she''s spent her entire life preparing for.', 10, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Flamenco Finale','Get in touch with the stunning staccato and your inner Andalusian -- and put on your dancing shoes even if you''re just in the audience! It''s down to this one night of competition for the eight mesmerizing couples from around the globe that made it this far. Purchase VIP tickets to experience the competition and revel in the after-hours cabaret party with the world''s most alluring dancers!', 14, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Jesse Lewis Unplugged', 'It''s one night only for this once-in-a-lifetime concert-in-the-round with Grammy winning folk and blues legend Jesse Lewis. Entirely stripped of elaborate recording production, Lewis'' music stands entirely on its own and has audiences raving it''s his best work ever. With limited seating this final concert, don''t dare to miss this classic you can tell your grandkids about when they develop some real taste in music.', 15, 1);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Madame Butterfly', 'Make way for Puccini''s opera in three acts and wear waterproof mascara for the dramatic tearjerker of the season. Let the voice of renowned soprano Rosino Storchio and tenor Giovanni Zenatello envelop you under the stars while you sob quietly into your handkerchief! Wine and hard liquor will be available during intermission and after the show for those seeking to drown their sorrows.', 16, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Mime Mania!', 'Join in the region''s largest and most revered demonstration of one of the most mocked arts forms of all time. Stand in stunned silence while the masters of Mime Mania thrill with dramatic gestures that far surpass the now passé "Woman in a Glass Box." See the famous, "I have 10 fingers, don''t make me give you one!" and other favorites and be sure to enjoy the post-show silent auction.', 17, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Almost (Mostly) Morrison', 'This show is for all those who traded in Hemingway for the poetry of the Doors, but really can''t remember why.  Come see a dead ringer for Jim Morrison and let the despair envelop your soul as he quotes from his tragic mentor, "I believe in a prolonged derangement of the senses in order to obtain the unknown." But be advised: Leave your ganja at home, or leave with the Po-Po', 18, 1);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Tutu Tchai', 'Join your fellow ballet enthusiasts for the National Ballet Company''s presentation of Tutu Tchai, a tribute to Pyotr Tchaikovsky''s and the expressive intensity revealed in his three most famous ballets: The Nutcracker, Swan Lake, and The Sleeping Beauty.', 19, 2);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Slap Shot', 'They''re out to prove it''s not all about the fights! Join your favorite members of the Canadian Women''s Hockey League as they compete for the title "Queen of the Slap Shot." Commonly believed to be hockey''s toughest shot to execute, the speed and accuracy of slap shots will be measured on the ice. Fan participation and response will determine any ties. Proceeds will benefit local area domestic violence shelters.', 20, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Giants of the Game', 'Your votes are in and the teams are assembled and coming to a stadium near you! Join Brendan ''Biceps'' Owen and the rest of the NBA''s leading players for this blockbuster East versus West all-star game. Who will join the rarefied air with past MVP greats like Shaquille O''Neal, LeBron James, and Kobe Bryant? Don''t wait to see the highlights when you can experience it live!', 21, 4);
insert into Event ( name, description, mediaitem_id, category_id) values ( 'Punch and Judy (with a Twist)', 'You may not be at a British seaside but you heard right! Bring your family to witness a new twist on this traditional classic dating back to the 1600s ... only this time, Mr. Punch (and his stick) have met "The 1%." Cheer (or jeer) from the crowd when you think Punch should use his stick on Mr. 1%. Fans agree, "It''s the best way to release your outrage at the wealthiest 1% without  being arrested!".', 22, 2);

insert into Show ( event_id, venue_id) values ( 1, 1);
insert into Performance ( show_id, date) values ( 1, '2013-04-01 19:00:00');
insert into Performance ( show_id, date) values ( 1, '2013-04-02 19:00:00');

insert into Show ( event_id, venue_id) values ( 1, 2);
insert into Performance ( show_id, date) values ( 2, '2013-04-03 19:30:00');
insert into Performance ( show_id, date) values ( 2, '2013-04-04 19:30:00');

insert into Show ( event_id, venue_id) values ( 2, 1);
insert into Performance ( show_id, date) values ( 3, '2013-04-05 17:00:00');
insert into Performance ( show_id, date) values ( 3, '2013-04-05 19:30:00');

insert into Show ( event_id, venue_id) values ( 2, 2);
insert into Performance ( show_id, date) values ( 4, '2013-04-07 17:00:00');
insert into Performance ( show_id, date) values ( 4, '2013-04-07 19:30:00');

insert into Show ( event_id, venue_id) values ( 3, 3);
insert into Performance ( show_id, date) values ( 5, '2013-05-11 21:00:00');


insert into TicketCategory ( description) values ( 'Adult');
insert into TicketCategory ( description) values ( 'Child 0-14yrs');

insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 5, 1, 167.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 6, 1, 197.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 7, 1, 167.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 8, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 9, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 10, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 11, 1, 122.5);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 5, 2, 157.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 6, 2, 187.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 7, 2, 157.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 8, 2, 145.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 9, 2, 145.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 10, 2, 145.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (2, 11, 2, 112.5);

insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (1, 1, 1, 219.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (1, 2, 1, 199.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (1, 3, 1, 179.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (1, 4, 1, 149.50);


insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 5, 1, 167.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 6, 1, 197.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 7, 1, 167.75);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 8, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 9, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 10, 1, 155.0);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (4, 11, 1, 122.5);

insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (3, 1, 1, 219.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (3, 2, 1, 199.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (3, 3, 1, 179.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (3, 4, 1, 149.50);

insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (5, 12, 1, 219.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (5, 13, 1, 199.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (5, 14, 1, 179.50);
insert into TicketPrice ( show_id, section_id, ticketcategory_id, price) values (5, 15, 1, 149.50);

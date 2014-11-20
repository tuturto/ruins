"Secret of the Ruins" by "Tuukka Turto"

When play begins:
	say "Not too long ago, ancient ruins were discovered in the Amazon Jungle. You have traveled there as a part of group of archaeologists, who plan to excavate the ruins and discover what secrets they hold.".

Book - General

Section - Actions

Quizzing it about is an action applying to one thing and one visible thing. Understand "ask [someone] about [any thing]" and "quiz [someone] about [any thing]" as quizzing it about.

Informing it about is an action applying to one thing and one visible thing. Understand "tell [someone] about [any thing]" and "inform [someone] about [any thing]" as informing it about.

Check quizzing it about:
	say "[The noun] shrugs unhelpfully."

Check informing it about:
	say "[The noun] only barely listens your explanation."

Section - New Kinds and Properties

A person has a room called destination.

a hidden item is a kind of thing. a hidden item can be found or not found. Hidden item is usually not found.

a room has some text called journal entry. the journal entry of a room is usually "".

Book - Secret of the Ruins

Test retrieve-journal with "take journal / south"

Test enter-temple with "south / southwest / read journal / examine theodolite / northeast / northeast / read journal / push jaguar / down"

Test repair-machine with "north / read journal / pull lever / south / east / examine crates / search crates / take cog / search crates / west / north / attach cog to machine"

Test enter-cavern with "pull lever / south / southwest / read journal / down / east / examine scale model"

Test enter-jeep with "west / up / northeast / up / west / enter jeep"

Test travel-waterfall with "south / south / enter car / examine jeep / take all / northeast / cut vines / northeast / north / cut vines / north / west / cut vines / west"

Test me with "test retrieve-journal / test enter-temple / test repair-machine / test enter-cavern / test enter-jeep / test travel-waterfall"



Montana is a woman. The description is "Montana Jacks is keenly observing her surroundings."

Every turn when the destination of Montana is not the location of Montana and Montana is not off-stage and destination of Montana is not off-stage:
	let the right direction be the best route from the location of Montana to the destination of Montana;
		try Montana going the right direction.

Bauer is a man. The description is "Bauer is peering around through his round spectacles."

Every turn when the destination of Bauer is not the location of Bauer and Bauer is not off-stage:
	let the right direction be the best route from the location of Bauer to the destination of Bauer;
			try Bauer going the right direction.

Chapter - Prologue

Section - Regions

Start Area is a region. The Tent is in Start Area.

Dig Area is a region. Camp Site, Dig Site, The Monolith and Old Temple are in Dig Area. 

Underground Temple Area is a region. The Underground Machinery, the Underground Room, Storage Room, the Underground Monolith, Monolith Base and Underground Cavern are in Underground Temple Area.

Section - Backdrops

The sky is a backdrop. The description is "the sky is completely cloudless." The sky is in the Dig Area.

The ground is a backdrop. The description is "Ground is dry and dusty." The ground is in the Dig Area.

The jungle is backdrop. The description is "Thick jungle surrounds the dig site from all directions. You wouldn't want to wander in there and get lost." The jungle is in the Dig Area.

Section - Actions

Understand the command "read" as something new.

Reading is an action applying to one thing and requiring light. Understand "read [something]" as reading.

Check reading:
	if player has the old journal and the noun is old journal:
		let t be the location of player;
		if the journal entry of t is "":
			say "you don't find anything suitable from the journal.";
		otherwise:
			say journal entry of t.  

Section - Rooms

The Tent is a room. The description is "Medium sized tent is filled with chairs, tables and all sorts of scientific papers and journals. Opening at the south leads outside."

the old journal is in the tent. The description is "This old journal is full of cryptic writings of late Mr. Johansson. Most scholars disregard it as a hoax, but maybe there's something in it still."

Camp Site is south of the Tent. The description is "Camp site has several tents scattered around. Cooking area has been set in the middle of them and to north is entrance to the main tent. Main dig site can be seen at south, while an old temple is located to east from here. An old jeep is standing near by".

the jeep is an enterable scenery container in the Camp Site. The description is "this old jeep has seen better days, but it seems to be in driveable condition still."

instead of entering jeep during exploring cavern:
	say "You hop into the jeep and wait for Dr. Bauer and Montana to catch up. The drive to airport and the subsequent flight back to New York are uneventful and soon you find yourself back in the museum.";
	now the Player is in Study.

instead of entering jeep:
	say "It's not time to leave yet."

Dig Site is south of the Camp site. The description is "Main dig site has several excavations, all neatly marked, labeled and cataloged. The main camp site is located at north from here. A well traveled path leads from south west to north east." The journal entry is "'In the jungle of Amazon lies a secret village and that village houses an entryway to a hidden temple.'"

Old Temple is east of Camp site. Old Temple is northeast of the Dig site. The description is "Large stones stand at the ruins of the old temple. The roof has caved in and walls are only partially standing. The walls are covered with carvings of animals. The camp site is located to west, while the main dig site can been seen at south west direction." The journal entry is "'Large circular temple, made of obsidian stones stands at the gate of the underworld.'"

Animal Carvings are scenery in the Old Temple. The description is "Carvings of various jungle animals cover what's left of the walls here."

the stones are scenery in the Old Temple. The description is "The temple walls are built from old stones. They have been fitted together with exceptional precision that even modern times would have hard time to replicate."

the jaguar carving is scenery in the Old Temple. The description is "Ancient jaguar has been carved into one of the stone pillars. It seems to be slightly raised compared to other animal carvings."

the temple_scenery is scenery in the Old Temple. The description is "Large stones that form the circle of temple are long fallen and chipped."

understand "temple" as temple_scenery.

Instead of pushing the jaguar:
	say "As you push the jaguar carving, it slowly depresses slightly. A screeching sound behind of you catches your attention and as you turn, there's an opening leading under the ground.";
	now the description of the Old Temple is "Large stones stand at the ruins of the old temple. The roof has caved in and walls are only partially standing. The walls are covered with carvings of animals. The camp site is located to west, while the main dig site can been seen at south west direction. A stone slab has moved aside and revealed stairs leading down underground.";
	change the down exit of the Old Temple to the Underground Room;
	change the up exit of the Underground Room to the Old Temple.

The Monolith is southwest of the Dig site. The description is "Ancient monolith stands on a stony clearing. Curious markings cover surface of it. At north east one can see the main dig site." The journal entry is "'Know this: standing at the base of the world pillar, and gazing at the direction given by the runes, you shall see where the key of underworld lies.'"

the monolith_scenery is scenery in the Monolith. The description is "Ancient monolith stands alone. Curious markings cover surface of it."

understand "monolith" as monolith_scenery.

Underground Room is a room. The description is "Light shines to room from the opening in the roof. Stairs made of heavy stone lead back up to the temple."

Storage Room is east of Underground Room. The description is "Small storage room is packaged full with crates."

crates are scenery in the Storage Room. The description is "crates of various sizes lie about."

Instead of searching crates:
	if the rock cog has not been found:
		say "You discover a rock cog in one of the boxes.";
		now rock cog is in Storage Room;
		now rock cog has been found;
	otherwise:
		say "Rest of the boxes contain only uninteresting things."

The Underground Monolith is southwest of the Underground Room. The description is "Large stone block pierces this room from ceiling to floor. It is covered with the same markings as the monolith above the ground." The journal entry is "'While the world pillar stands above the ground, but it has roots that reach deep underground. Only the invisible hands can open the gate for you.'"

The Underground Machinery is north of the Underground Room. The description is "Medium sized room is packed full of cogs, pulleys, pipes and levers." The journal entry is "'Invisible hands are commanded by the mechanical minds.'"

The Cogs are scenery in the Underground Machinery. The description is "Cogs made of black stone are part of an intricate machine. It seems to one of them is missing."

The pulleys are scenery in the Underground Machinery. The description is "Pulleys made of chains start from the machine and disappear through holes in the ceiling. Maybe the machine is meant to move something?"

The pipes are scenery in the Underground Machinery. The description is "Pipes made of stone are attached to the machine from one end. The other ends disappear through the floor. Might this be the power source for the machine?"

The levers are scenery in the Underground Machinery. The description is "Several levers are on the side of the machine. They are most likely used to operate it." Understand "lever" as levers.

Instead of tying the rock cog to the Machine:
	say "The rock cog slides into machine and fits perfectly.";
	now the rock cog is part of the Machine;
	now the machine is repaired.

Instead of pulling the levers:
	if the machine is not repaired:
		say "Nothing happens, maybe the machine needs to be repaired first.";
	otherwise:
		say "Cogs start to move and pulleys tighten. You hear a low rumbling noise coming from somewhere south.";
		now description of the Underground Monolith is "Large stone block pierces this room from ceiling to floor. It is covered with the same markings as the monolith above the ground. Stairs lead downwards around the monolith.";
		change the down exit of the Underground Monolith to the Monolith Base;
		change the up exit of the Monolith Base to the Underground Monolith.

The Machine is in the Underground Machinery. The machine can be repaired or not repaired. The machine is not repaired. The description is "Very complicated looking machine fills the room. Various cogs, pulleys, pipes and levers stuck out from it."

Instead of taking the Machine:
	say "it's very large, complex and attached to the walls and floor. Better leave it where it is now."

Monolith Base is a room. The description is "Base of the monolith is enormous and fills most of the room."

monolith_base is scenery in the Monolith Base. The description is "at this depth the monolith is enormous. It is covered with the same markings as the upper levels."

Understand "monolith" as monolith_base.

Underground Cavern is east of Monolith Base. The description is "Cavern is so large that the light doesn't reach all the corners or ceiling. The floor is covered by a scale model of some sort." The journal entry is "'Know location of one of the temples, and you'll know location of all the temples.'"

scale model is a scenery in the Underground Cavern. The description is "The scale model seems to represent portion of the earth. There are large temple like structures that you don't recognize at all and one of them is located directly where the dig site is."

Section - Items

theodolite is in the Monolith. The description is "complex looking theodolite is standing on a tripod."  

Before taking the theodolite:
	if Montana is in the Monolith:
		say "Montana looks up from her notes and asks you not to remove the theodolite as she still needs it." instead.

Before examining the theodolite:
	say "You peer through the theodolite and see an image of a jaguar carved to stone." instead.

the rock cog is a thing. the rock cog is a hidden item. The description is "very finely carved rock cog."

Section - Scenes

Exploring dig site is a scene. Exploring dig site begins when the player is in the Camp Site for the first time. Exploring dig site ends when Exploring temple begins.

When Exploring dig site begins:
	now Montana is in the Monolith;
	now the destination of Montana is the Monolith;
	now Bauer is in the Dig Site;
	now the destination of Bauer is the Dig Site.

Exploring temple is a scene. Exploring temple begins when the player is in the Underground Room for the first time. Exploring temple ends when Exploring cavern begins.

When exploring temple begins:
	now the destination of Montana is the Underground Monolith;
	now the destination of Bauer is the Underground Machinery.

Exploring cavern is a scene. Exploring cavern begins when the player is in the Monolith Base for the first time. Exploring cavern ends when Meeting in Study begins.

When exploring cavern begins:
	now the destination of Montana is the Underground Cavern;
	now the destination of Bauer is the Underground Cavern.

Section - Characters

[ Bauer ]

Instead of quizzing Bauer about the old journal:
	say "'I'm positively sure that the Journal of Dichomitus is not a hoax.'"

Every turn when the player is in the Dig site and Bauer is in the Dig site:
	if a random chance of 1 in 3 succeeds:
		say "Bauer [one of]slowly shifts through sand, while searching for artifacts[or]writes down notes into his notebook[or]closely examines pottery fragments[at random]."

Every turn when the player is in the Underground Machinery and Bauer is in the Underground Machinery:
	if a random chance of 1 in 3 succeeds:
		say "Bauer [one of]is examining various pulleys and muttering to himself[or]carefully checks if any of the gears is loose[or]mutters to himself while scratching his head[or]writes down something into his notebook[at random]."
		
Every turn when Bauer is in the Underground Machinery:
	if a random chance of 1 in 30 succeeds:
		now the destination of Bauer is Underground Monolith.

Every turn when the player is in the Underground Monolith and Bauer is in the Underground Monolith:
	if a random chance of 1 in 3 succeeds:
		say "Bauer [one of]walks around the monolith and looks at the symbols[or]closely examines some of the symbols[or]is examining the floor closely[at random]."

Every turn when Bauer is in the Underground Monolith:
	if a random chance of 1 in 30 succeeds:
		now the destination of Bauer is the Underground Machinery. 

Instead of quizzing Bauer about the scale model during exploring cavern:
	say "'I have never seen anything like that. Look at it. See this temple here? It's right where the dig site is located. And there are other temples too. This must mean that there are other locations like this around the world.'";
	say "'We better head back home and plan sending expeditions to other sites. This is really big discovery and I want us to be the ones researching it further.'";
	say "'There's a jeep at the dig site that we can take back to the airport.'".

[ Montana ]

Every turn when the player is in the Monolith and Montana is in the Monolith:
	if a random chance of 1 in 3 succeeds:
		say "Montana [one of]is examining markings on the monolith[or]peers through theodolite[or]is making complex looking calculations in her notebook[or]stares into distance while pondering something[at random]."

Instead of quizzing Montana about the old journal:
	say "'I used to think that the Journal of Dichomitus was just an elaborate hoax, but the recent events indicate that this might not be the case.'"

Instead of quizzing Montana about the theodolite during exploring dig site:
	say "'I set it to point the direction I calculated from these markings on the monolith. I believe it's currently pointing towards that temple. Have a look and see by yourself.'"

Instead of quizzing Montana about the monolith_scenery during exploring dig site:
	say "'This monolith is fascinating. We haven't been able to decipher all of it, but it seems to have some very complex mathematical equations on it.'"

Instead of quizzing Montana about the jaguar carving during exploring dig site:
	say "'I'm not sure about the meaning of the jaguar carving, but I got settings for theodolite from these engravings in monolith. Maybe it would make sense to investigate the carving more closely?'"

Instead of quizzing Montana about the temple_scenery during exploring dig site:
	say "'The theodolite is currently pointing towards that old temple. There is connection between the monolith and the temple, I'm sure about that.'"

Every turn when the player is in the Underground Monolith and Montana is in the Underground Monolith:
	if a random chance of 1 in 3 succeeds:
		say "Montana [one of]is examining markings on the monolith[or]writes furiously in her notebook[or]walks around the room, lost in her thought[at random]."

Instead of quizzing Montana about the monolith_scenery during exploring temple:
	say "'It seems that the monolith is much larger than we thought as it continues further down in earth. Who would have thought that?'"

Instead of quizzing Montana about the scale model during exploring cavern:
	say "'That seems to be a map of some sort. Dr.Bauer will be thrilled to examine it.'"

Chapter - At the Museum

Section - Regions

Museum Area is a region. Study and Grand Hall are in Museum Area.

Jungle Area is a region. Jungle Road, Jungle Path, Riverbank, Waterfall, Waterfall Basin are in Jungle Area.

Jungle Cave Area is region. Behind the Waterfall, Large Cave, Winding Stairs, Dusty Lair are in Jungle Cave Area.

Section - Backdrops

Section - Actions

Section - Rooms

Study is a room. The description is "Dr. Bauer's study is filled to the brim with books, scrolls and ancient items. There probably is a method in this chaos, but you fail to see it."

Grand Hall is south of the Study. The description is "The grand hall of the museum is large and full of polished marble."

Front of Museum is south of Grand Hall. The description is "Cars are passing by on a busy road. At north looms the very impressive looking museum."

the car is scenery in the Front of Museum. The description is "A modern taxi is standing here, waiting for you to get in."

instead of entering car during jungle adventure:
	say "Taxi, Airplane more jeeping. TODO: fix this later.";
		now the Player is in Jungle Road;
		now Montana is in Jungle Road.

understand "taxi" as car.

Jungle Road is a room. The description is "This is end of the road and closest to the suspected location of the temple that you can get with car."

the jeep_2 is enterable scenery container in the Jungle Road. The printed name is "jeep". The description is "this old jeep has seen better days, but it seems to be in driveable condition still."

machete is in jeep_2. The description is "the machete looks very sharp."

rope is in jeep_2. The description is "long coil of hempen rope."

understand "jeep" as jeep_2

vines are scenery in Jungle Road. The description is "thick wall of vines block your movement."

Before going northeast in Jungle Road:
	if vines are in Jungle Road:
		say "thick vines block your path.";
		stop the action.

Instead of cutting vines:
	if player has machete:
		remove vines from play;
		say "you clear the path.";
	otherwise:
		say "you lack proper tools."

Jungle Path is northeast of Jungle Road. The description is "A small path leads through the jungle, but this seems to be as far as you can get."

vines_2 are scenery in Jungle Path. The printed name is "vines". The description is "thick wall of vines block your movement."

understand "vines" as vines_2.

Before going north in Jungle Path:
	if vines_2 are in Jungle Path:
		say "thick vines block your path.";
		stop the action.

Instead of cutting vines_2:
	if player has machete:
		remove vines_2 from play;
		say "you clear the path.";
	otherwise:
		say "you lack proper tools."

Riverbank is north of Jungle Path. The description is "A large stream cuts through the jungle."

vines_3 are scenery in Riverbank. The printed name is "vines". The description is "thick wall of vines block your movement."

understand "vines" as vines_3.

Before going west in Riverbank:
	if vines_3 are in Riverbank:
		say "thick vines block your path.";
		stop the action.
					
Instead of cutting vines_3:
	if player has machete:
		remove vines_3 from play;
		say "you clear the path.";
	otherwise:
		say "you lack proper tools."

Waterfall is west of Riverbank. The description is "The river plummets down here, forming a large waterfall."

Waterfall Basin is down of Waterfall. The description is "Roar of the waterfall is deafening down here."

Behind the Waterfall is east of Waterfall Basin. The description is "A small cave continues deeper towards east. At west the waterfall forms a solid wall of water."

[ TODO: put a fancy trap here ] 

Large Cave is east of Behind the Waterfall. The description is "Roar of the waterfall is quieter here, but you can still hear it coming from west. Four braziers stand in corners of the cavern."

Winding Stairs is down from Large Cave. Description is "Winding stairs lead deeper underground."

Dusty Lair is down from Winding Stairs. The description is "The lair is silent and dust covers the ground. Nobody probably has been here in centuries."

[ TODO: invisible shambler here ]

Section - Items

Section - Scenes

Meeting in Study is a scene. Meeting in Study begins when the Player is in Study for the first time. Meeting in Study ends when Two Archaeologists begins.

When Meeting in Study begins:
	now Bauer is in Grand Hall;
	now destination of Bauer is Study;
	now Montana is in Grand Hall;
	now destination of Montana is Study.

Two Archaeologists is a scene. Two Archaeologists begins when Bauer is in Study for the first time.

When Two Archaeologists begins:
	now destination of Montana is off-stage.;
	say "'I hope you did not have to wait for long. I was making arrangements with Dr. Jacks concerning to the next move. Car should be outside soon and it will take you to the airport. From there you and Dr. Jacks will take an airplane and fly to Zambia where the next temple is located.'[paragraph break]'If you have any questions before you go, now is the time to ask them. As I said, the car will be outside soon, so you can leave when ever you feel ready.'"

Jungle Adventure is a scene. Jungle Adventure begins when Bauer is in Study for the first time.

Section - Characters

Every turn during the Two Archaeologists:
	if the location of Montana is not the location of the Player:
		let the right direction be the best route from the location of Montana to the location of Player;
		try Montana going the right direction.
		
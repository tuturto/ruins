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

Disarming is an action applying to one thing. Understand "disarm [something]" as disarming.

Check disarming:
	say "After some consideration, you conclude that [the noun] does not need disarming."

Combining is an action applying to one thing and one visible thing. Understand "combine [something] with [something]" as combining.

Check combining:
	say "You look [the noun] and [the second noun], then decide that they don't need combining."

Section - New Kinds and Properties

A person has a room called destination.

a hidden item is a kind of thing. a hidden item can be found or not found. Hidden item is usually not found.

a mapping item is a kind of thing. a mapping item has room called destination. a mapping item has region called mapped area.

a room has some text called journal entry. the journal entry of a room is usually "".

Book - Secret of the Ruins

Test retrieve-journal with "take all / south"

Test enter-temple with "test retrieve-journal / south / southwest / read journal / examine theodolite / northeast / northeast / read journal / push jaguar / down / switch on lantern"

Test repair-machine with "test enter-temple / north / read journal / pull lever / south / east / examine crates / search crates / take cog / search crates / west / north / attach cog to machine"

Test enter-cavern with "test repair-machine / pull lever / south / southwest / read journal / down / east / examine scale model"

Test enter-jeep with "test enter-cavern / west / up / northeast / up / switch off lantern / west / enter jeep"

Test travel-waterfall with "test enter-jeep / take all / south / up / south / south / enter car / examine jeep / take all / examine map / northeast / cut vines / northeast / examine map / north / examine map / north / cut vines / north / examine map / west / cut vines / west"

Test scale-waterfall with "test travel-waterfall / tie rope to tree / down / examine map"

Test light-braziers with "test scale-waterfall / east / examine floor / ask Montana about trap / disarm trap / east / switch on lantern / read journal / light braziers"

Test me with "test light-braziers"



Montana is a woman. The description is "Dr. Montana Jacks is renowned archaeologist, who spends more time on the field than in her study. She notices you looking a flashes a bright smile, with white teeth in a sharp contrast to her dark skin."

Montana is carrying Lantern_2. The printed name of Lantern_2 is "lantern_2". The description of Lantern_2 is "Standard battery powered lantern." Lantern_2 is lit. 

Every turn during Epilogue:
	if the destination of Montana is not the location of Montana and Montana is not off-stage:
		let the right direction be the best route from the location of Montana to the destination of Montana;
		try Montana going the right direction.

Bauer is a man. The description is "Dr. Samuelson Bauer is an old man with slightly hunched posture. His eyes behind the round spectacles are still very keen and bright."

Bauer is carrying Lantern_3. The printed name of Lantern_3 is "lantern_3". The description of Lantern_3 is "Standard battery powered lantern." Lantern_3 is lit.

Every turn when the destination of Bauer is not the location of Bauer and Bauer is not off-stage:
	let the right direction be the best route from the location of Bauer to the destination of Bauer;
			try Bauer going the right direction.

After going:
	if player has lantern and lantern is lit:
		if location of player is not dark:
			say "You decide to conserve the batteries and turn off the lantern";
			now the lantern is unlit;
	continue the action.

Chapter - Prologue

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

Instead of examining a mapping item:
	if location of the player is the destination of the noun:
		say "[the description of the noun] You have arrived at the location marked in [the noun].";
	otherwise:
		if location of the player is in mapped area of the noun:
			let way be the best route from the location of the player to the destination of the noun;
			if the way is not a direction:
				say "[the description of the noun] Based on it, you wouldn't know which direction to go.";
			otherwise:
				say "[the description of the noun] It indicates that the correct direction to travel is [way]";
		otherwise:
			say "After consulting [the noun] for a while, you conclude that it doesn't have your current location on it.".

Instead of switching on the lantern:
	now the lantern is lit;
	say "you light the lantern."

Instead of switching off the lantern:
	now the lantern is not lit;
	say "you turn off the lantern."

Section - Rooms

The Tent is a room. The description is "Medium sized tent is filled with chairs, tables and all sorts of scientific papers and journals. Opening at the south leads outside."

the old journal is in the tent. The description is "This old journal is full of cryptic writings of late Mr. Johansson. Most scholars disregard it as a hoax, but maybe there's something in it still."

the lantern is in the tent. The description is "This old battery powered lantern can be switched on to provide light."

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

Underground Room is a dark room. The description is "Light shines to room from the opening in the roof. Stairs made of heavy stone lead back up to the temple."

Storage Room is east of Underground Room. It is dark. The description is "Small storage room is packaged full with crates."

crates are scenery in the Storage Room. The description is "crates of various sizes lie about."

Instead of searching crates:
	if the rock cog has not been found:
		say "You discover a rock cog in one of the boxes.";
		now rock cog is in Storage Room;
		now rock cog has been found;
	otherwise:
		say "Rest of the boxes contain only uninteresting things."

The Underground Monolith is southwest of the Underground Room. It is dark. The description is "Large stone block pierces this room from ceiling to floor. It is covered with the same markings as the monolith above the ground." The journal entry is "'While the world pillar stands above the ground, but it has roots that reach deep underground. Only the invisible hands can open the gate for you.'"

The Underground Machinery is north of the Underground Room. It is dark. The description is "Medium sized room is packed full of cogs, pulleys, pipes and levers." The journal entry is "'Invisible hands are commanded by the mechanical minds.'"

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

Monolith Base is a dark room. The description is "Base of the monolith is enormous and fills most of the room."

monolith_base is scenery in the Monolith Base. The description is "at this depth the monolith is enormous. It is covered with the same markings as the upper levels."

Understand "monolith" as monolith_base.

Underground Cavern is east of Monolith Base. It is dark. The description is "Cavern is so large that the light doesn't reach all the corners or ceiling. The floor is covered by a scale model of some sort." The journal entry is "'Know location of one of the temples, and you'll know location of all the temples.'"

scale model is a scenery in the Underground Cavern. The description is "The scale model seems to represent portion of the earth. There are large temple like structures that you don't recognize at all and one of them is located directly where the dig site is."

Section - Regions

Start Area is a region. The Tent is in Start Area.

Dig Area is a region. Camp Site, Dig Site, The Monolith and Old Temple are in Dig Area. 

Underground Temple Area is a region. The Underground Machinery, the Underground Room, Storage Room, the Underground Monolith, Monolith Base and Underground Cavern are in Underground Temple Area.

Section - Backdrops

The sky is a backdrop in the Dig Area. The description is "the sky is completely cloudless."

The ground is a backdrop in the Dig Area. The description is "Ground is dry and dusty."

The jungle is backdrop in the Dig Area. The description is "Thick jungle surrounds the dig site from all directions. You wouldn't want to wander in there and get lost."

Section - Items

theodolite is in the Monolith. The description is "complex looking theodolite is standing on a tripod."  

Before taking the theodolite:
	if Montana is in the Monolith:
		say "Montana looks up from her notes and asks you not to remove the theodolite as she still needs it." instead.

Before examining the theodolite:
	say "You peer through the theodolite and see an image of a jaguar carved to stone." instead.

the rock cog is a thing. the rock cog is a hidden item. The description is "very finely carved rock cog."

Section - Scenes

Epilogue is a scene. Epilogue begins when the Exploring dig site begins. Epilogue ends when Exploring Cavern ends.

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

Section - Actions

Section - Rooms

Bauer's Study is a room. The description is "Dr. Bauer's study is filled to the brim with books, scrolls and ancient items. There probably is a method in this chaos, but you fail to see it."

the old map is in Bauer's Study.

Montana's Study is east of Narrow Hallway. The description is "The study of Dr. Jacks has a neat and orderly collection of books on the walls. The desk is clean and free of any extra papers. Few masks are hanging from the walls."

Your Study is west of Narrow Hallway. The description is "Your study is small and cramped. Walls are covered with couple bookshelves and a desk takes up rest of the space. On the desk, there are several piles of paper."

Narrow Hallway is south of the Bauer's Study. The description is "This narrow hallway leads to most of the staff rooms. Narrow staircase leads up to ground level."

Grand Hall is up from the Narrow Hallway. The description is "The grand hall of the museum is large and full of polished marble."

Front of Museum is south of Grand Hall. The description is "Cars are passing by on a busy road. At north looms the very impressive looking museum."

the car is scenery in the Front of Museum. The description is "A modern taxi is standing here, waiting for you to get in."

instead of entering car during jungle adventure:
	say "Taxi, Airplane more jeeping. TODO: fix this later.";
		now the Player is in Jungle Road;
		now Montana is in Jungle Road.

understand "taxi" as car.

Jungle Road is a room. The description is "This is end of the road and closest to the suspected location of the temple that you can get with car. The jungle surrounds you, forming an impenetrable looking wall." The journal entry is "A hidden path leads through green forest and takes the weary traveler to stream of kings." 

Path is scenery in Jungle Road. The description is "Despite for searching for a while, you can't find anything that would resemble a path."

Instead of quizzing Montana about the Path:
	say "'Sometimes you have to cut your own path.'"

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

Jungle Path is northeast of Jungle Road. The description is "A small path leads through the jungle."

Bend in Path is north of Jungle Path. The description is "The path starts to curve towards east."

vines_2 are scenery in Bend in Path. The printed name is "vines". The description is "thick wall of vines block your movement."

understand "vines" as vines_2.

Before going north in Bend in Path:
	if vines_2 are in Bend in Path:
		say "thick vines block your path.";
		stop the action.

Instead of cutting vines_2:
	if player has machete:
		remove vines_2 from play;
		say "you clear the path.";
	otherwise:
		say "you lack proper tools."

Narrow Path is east of Bend in Path. The description is "Narrow path leads through the jungle."

Clearing in Jungle is northeast of Narrow Path. The description is "Small clearing in jungle."

Riverbank is north of Bend in Path. The description is "A large stream cuts through the jungle and forms an obstacle that you can't pass without boats. A small path cut through the jungle lies at south." The journal entry is "The stream of the kings can carry long boats swiftly. But only true king knows how far to travel, unless he wants to face his peril."

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

Waterfall is west of Riverbank. The description is "The river plummets down here, forming a large waterfall. The view is spectacular and you can see over huge trees of the jungle. The air is moist with the water mist. Small path has been cut through the jungle at west."

Tree is scenery in Waterfall. The description is "Large tree is standing here. It looks like perfect for fixing a rope."

Instead of quizzing Montana about the tree:
	say "'We might be able to descent the cliff, if you tie a rope on that tree. I'll fix edge of the cliff, so it doesn't get to the rope.'"

Instead of tying rope to the Tree:
	if the Waterfall Basin is unvisited:
		say "Montana double checks the rope and nods approvingly before kicking the other end down the cliff. 'That should do it. Lets go.'";
	otherwise:
		say "You tie the rope around the tree once again.";
	now the rope is part of the tree. 

Before going down in Waterfall:
	if rope is part of the tree:
		say "You and Montana start descending down to waterfall basin using the rope. Couple times your foot slips, but you always manage to regain your balance.";	
	otherwise:
		say "Rocks are slippery from the water mist and descent is difficult. Half-way down your foot slips and you plummet into your death.";
		end the story finally saying "Your adventure has ended."

Before going east in Waterfall when Waterfall Basin is visited:
	if rope is part of the tree:
		say "You untie the rope and coil it to a neat loop. No sense leaving it behind after all.";
		now the player has the rope.

Waterfall_scenery is scenery in Waterfall. The printed name is "waterfall". The description is "A large waterfall plummets roaring down to the jungle."

Instead of quizzing Montana about the waterfall_scenery:
	say "'Truly spectacular waterfall, but lets stay focused on the task.'"

Waterfall Basin is down of Waterfall. The description is "Roar of the waterfall is deafening down here. The water is churning around the small ledge you're standing on and every surface is slippery. The waterfall is like solid wall on the east." The journal entry is "The disciple has to prove that he's worthy of following the kings and travel through the elemental gate."

Before going up in Waterfall Basin:
	say "Scaling up the cliff would be impossible without the rope. Even with the rope it takes fair amount of time until you reach the top."

Behind the Waterfall is east of Waterfall Basin. The description is "A small cave continues deeper towards east. At west the waterfall forms a solid wall of water. Walls and floor are slippery from the water mist. You eye corridor suspiciously, something isn't right here."

thin thread is scenery in Behind the Waterfall. The description is "almost invisible thin thread runs across the corridor. No doubt, this is a trigger mechanism for a trap!"

understand "corridor", "floor", "trap" as thin thread.

Instead of quizzing Montana about the thin thread:
	say "'No doubt that has been set up to keep intruders away. Can you find a way to get past it?'"

Instead of disarming the thin thread:
	say "You look around carefully and find a tiny hole in wall that must be part of the trap. While making sure that you're out of the way, you trigger the trap and see as a small dart flies across the corridor. The trap is now harmless.";
	remove the thin thread from play.

Instead of cutting the thin thread:
	if player has machete:
		say "You unceremoniously cut the thin thread with your machete and the trap is now ineffective.";
		remove the thin thread from play;	
	otherwise:
		say "You pat your pockets and realize that you're lacking tools to cut the thread."

Before going east in Behind the Waterfall:
	if thin thread is in Behind the Waterfall: 
		say "Your feet catches a thin thread that has been placed across the corridor. Before you can react, a small dart shoots at you and you feel cold numbness to spread from the wound.";
		end the story finally saying "You have died".

Large Cave is east of Behind the Waterfall. It is dark. The description is "Roar of the waterfall is quieter here, but you can still hear it coming from west. Four braziers stand in corners of the cavern and a stone table is in the center of the cave." The journal entry is "'The kings are guided by the righteous flames of dragons.'"

braziers are scenery in Large Cave. The description is "four iron braziers are blackened by the fires that burned here ages ago."

stone table is scenery in Large Cave. The description is "a large table has been fashioned from a single piece of stone."

Instead of burning braziers when braziers are not lit:
	say "As you light the braziers, the stone table moves aside, revealing a circular staircase.";
	now braziers are lit;
	change the down exit of the Large Cave to the Winding Stairs;
	change the up exit of the Winding Stairs to the Large Cave.

Winding Stairs is a dark room. Description is "Winding stairs lead deeper underground." 

Dusty Lair is down from Winding Stairs. It is dark. The description is "The lair is silent and dust covers the ground. Nobody probably has been here in centuries."

[ TODO: invisible shambler here ]

Underground Passage is east from Dusty Lair. Underground Passage is dark. The description is "Underground passage."

Secret Chamber is east from Underground Passage. The description is "A secret chamber."

Section - Regions

Museum Area is a region. Bauer's Study, Montana's Study, Your Study, Narrow Hallway and Grand Hall are in Museum Area.

Jungle Area is a region. Jungle Road, Jungle Path, Bend in Path, Narrow Path, Clearing in Jungle, Riverbank, Waterfall, Waterfall Basin are in Jungle Area.

Jungle Cave Area is region. Behind the Waterfall, Large Cave, Winding Stairs, Dusty Lair, Underground Passage, Secret Chamber are in Jungle Cave Area.

Section - Backdrops

the jungle_2 is a backdrop in Jungle Area. The printed name is "jungle". The description is "Thick trees tower all around you and mossy vines hang from them. The sunlight is blocked by thick vegetation. You hear usual jungle noise all around of you."  

understand "jungle" as jungle_2.

the sky_2 is a backdrop in Jungle Area. The printed name is "sky". The description is "While you can't see the sky very clearly, it seems to be blue and there are hardly any clouds up there."

understand "sky" as sky_2.

Section - Items

the old map is a mapping item. The description is "This large map has been marked with locations of all known temples." The destination of the old map is Waterfall Basin. The mapped area is Jungle Area.

Section - Scenes

Meeting in Study is a scene. Meeting in Study begins when the Player is in Study for the first time. Meeting in Study ends when Two Archaeologists begins.

When Meeting in Study begins:
	now Bauer is in Narrow Hallway;
	now destination of Bauer is Bauer's Study;
	now Montana is in Narrow Hallway;
	now destination of Montana is Bauer's Study;
	remove lantern_2 from play;
	remove lantern_3 from play.

Two Archaeologists is a scene. Two Archaeologists begins when Bauer is in Study for the first time.

When Two Archaeologists begins:
	now destination of Montana is off-stage.;
	say "'I hope you did not have to wait for long. I was making arrangements with Dr. Jacks concerning to the next move. Car should be outside soon and it will take you to the airport. From there you and Dr. Jacks will take an airplane and fly to Zambia where the next temple is located.'[paragraph break]'Take this map with you. I have marked location of the temple on it. If you have any questions before you go, now is the time to ask them. As I said, the car will be outside soon, so you can leave when ever you feel ready.'"

Jungle Adventure is a scene. Jungle Adventure begins when Bauer is in Study for the first time.

Waterfall Descent is a scene. Waterfall Descent begins when Montana is in Waterfall for the first time. Waterfall Descent ends when Montana is in Waterfall Basin for the first time.

When Waterfall Descent begins:
	say "Montana looks down from the edge of the cliff. 'This looks like a dangerous descent, we should use some tools unless we want to fall all the way down.'"

When Waterfall Descent ends:
	say "Montana looks around and then back up. 'That wasn't too bad actually. It could have been a lot worse. Hopefully we don't have to haul anything heavy back up though.' She grins and then continues, 'but we'll worry about that if we find something heavy, right?'"

Section - Characters

Every turn during the Two Archaeologists:
	if the location of Montana is not the location of the Player:
		let the right direction be the best route from the location of Montana to the location of Player;
		try Montana going the right direction.
		
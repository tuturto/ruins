"ruins" by "Tuukka Turto"

When play begins, say "Not too long ago, ancient ruins were discovered in the Amazon Jungle. You have traveled there as a part of group of archaeologists, who plan to excavate the ruins and discover what secrets they hold."

[ Rooms are defined below ]

The Tent is a room. The description is "Medium sized tent is filled with chairs, tables and all sorts of scientific papers and journals. Opening at the south leads outside."

Camp Site is south of the Tent. The description is "Camp site has several tents scattered around. Cooking area has been set in the middle of them and to north is entrance to the main tent. Main dig site can be seen at south, while an old temple is located to east from here."

Dig Site is south of the Camp site. The description is "Main dig site has several excavations, all neatly marked, labeled and cataloged. The main camp site is located at north from here. A well traveled path leads from south west to north east."

Old Temple is east of Camp site. Old Temple is northeast of the Dig site. The description is "Large stones stand at the ruins of the old temple. The roof has caved in and walls are only partially standing. The camp site is located to west, while the main dig site can been seen at south west direction."

The Monolith is southwest of the Dig site. The description is "Ancient monolith stands on a stony clearing. Curious markings cover surface of it. At north east one can see the main dig site."

Underground Room is down of the Old Temple. The description is "Light shines to room from the opening in the roof. Stairs made of heavy stone lead back up to the temple."

The Underground Monolith is southwest of the Underground Room. The description is "Large stone block pierces this room from ceiling to floor. It is covered with the same markings as the monolith above the ground."

The Underground Machinery is north of the Underground Room. The description is "Medium sized room is packed full of cogs, pulleys, pipes and levers."

Monolith Base is down of the Underground Monolith. The description is "Base of the monolith is enormous and fills most of the room."

[ Items are defined below ]
theodolite is in the Monolith. The description is "complex looking theodolite is standing on a tripod."  

Before taking the theodolite:
	say "Janice looks up from her notes and asks you not to remove the theodolite as she still needs it." instead.

[ Scenes are defined here ]
Exploring dig site is a scene. Exploring dig site begins when the player is in the Dig site for the first time.

[ Characters are defined here ]

Bauer is a man in Dig site. The description is "Bauer is peering around through his round spectacles."

Every turn when the player is in the Dig site and Bauer is in the Dig site:
	if a random chance of 1 in 3 succeeds:
		say "Bauer [one of]slowly shifts through sand, while searching for artifacts[or]writes down notes into his notebook[or]closely examines pottery fragments[at random]."

Janice is a woman in the Monolith. The description is "Janice is keenly observing her surroundings."

Every turn when the player is in the Monolith and Janice is in the Monolith:
	if a random chance of 1 in 3 succeeds:
		say "Janice [one of]is examining markings on the monolith[or]peers through theodolite[or]is making complex looking calculations in her notebook[or]stares into distance while pondering something[at random]."

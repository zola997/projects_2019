#!/usr/bin/env julia
###############################################################################

type Student
	name::String
	surname::String
	index::String
	email::String
	points::Int
end

type Team
	members::Vector{Student}
end

const URL = String
type Spec
	text::String
	resources::Vector{URL}
end

type Solution
	repo::URL
	# Short youtube presentation.
	youtube::URL
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	release_bit::Union{URL,Vector{URL}}
	# Short project documentation.
	# Could set URL to file in github master blob.
	doc::URL
end

type Project
	name::String
	points::Int
	min_team_members::Int
	team::Team
	spec::Spec
	solution::Solution
end


###############################################################################

projects = Project[
	Project(
		"NES",
		45,
		3,
		Team(
			Student[
				Student(
					"Mario",
					"Peric",
					"RA-14/2015",
					"pericmario96@gmail.com",
					45
				),
				Student(
					"Pavle",
					"Portic",
					"RA-97/2015",
					"pavle.portic@tilda.center",
					45
				),
				Student(
					"Kosta",
					"Svrdlan",
					"RA-6/2015",
					"svrdlankosta@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/randomCharacter/E2LP_NES", # Git repo
			"https://www.youtube.com/watch?v=wnii1x77cQU", # Youtube
			"https://github.com/randomCharacter/E2LP_NES/releases/download/v1.0/nes.bit", # Bit file
			"https://github.com/randomCharacter/E2LP_NES/blob/master/doc/dokumentacija.pdf" # Doc file
		)
	),
	Project(
		"Legend Of Zelda",
		45,
		3,
		Team(
			Student[
				Student(
					"Milorad",
					"Markovic",
					"RA-162/2015",
					"mmiloradmiso@gmail.com",
					45
				),
				Student(
					"Vesna",
					"Isic",
					"RA-41/2015",
					"isic.vesna@gmail.com",
					45
				),
				Student(
					"Jelena",
					"Boroja",
					"RA-22/2015",
					"jelena.boroja1@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/CubeLord/LPRS2-Zelda.git", # Git repo
			"https://www.youtube.com/watch?v=0CTFHpnBlLo&feature=youtu.be", # Youtube
			"https://github.com/CubeLord/LPRS2-Zelda/blob/master/Legend_Of_Zelda.bit", # Bit file
			"https://github.com/CubeLord/LPRS2-Zelda/blob/master/legend_of_zelda.pdf" # Doc file
		)
	),
	Project(
		"Boomberman",
		45,
		3,
		Team(
			Student[
				Student(
					"Nebojsa",
					"Kakuca",
					"RA-147/2015",
					"nebojsa96@live.com",
					44
				),
				Student(
					"Nemanja",
					"Lazic",
					"RA-104/2015",
					"nemanjanesh@gmail.com",
					44
				),
				Student(
					"Milica",
					"Ponos",
					"RA-118/2015",
					"miponos@hotmail.com",
					44
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/KakucaNebojsa/Boomberman", # Git repo
			"https://www.youtube.com/watch?v=V5IfcWc_Ebo", # Youtube
			"https://github.com/KakucaNebojsa/Boomberman/blob/master/Bomberman.bit", # Bit file
			"https://github.com/KakucaNebojsa/Boomberman/blob/master/Bomberman-dokumentacija.docx" # Doc file
		)
	),
	Project(
		"Sensible Soccer",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Duck Hunt",
		45,
		4,
		Team(
			Student[
				Student(
					"Mladen",
					"Matić",
					"RA-44/2015",
					"maticmladen96@gmail.com",
					45
				),
				Student(
					"Mihailo",
					"Marković",
					"RA-191/2015",
					"mix996@gmail.com",
					45
				),
				Student(
					"Damjan",
					"Glamočić",
					"RA-65/2015",
					"damjan.glamocic75@gmail.com",
					45
				),
				Student(
					"Marko",
					"Milošević",
					"RA-46/2015",
					"markom26@yandex.ru",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/mladja777/duck_hunt", # Git repo
			"https://www.youtube.com/watch?v=MpmgGTueH8o", # Youtube
			"https://github.com/mladja777/duck_hunt/blob/master/battle_city_design/duck_hunt.bit", # Bit file
			"https://github.com/mladja777/duck_hunt/blob/master/Izvestaj.pdf" # Doc file
		)
	),
	Project(
		"Štoljpi za Duck Hunt",
		45,
		3,
		Team(
			Student[
				Student(
					"Nikola",
					"Malenčić",
					"RA-122/2015",
					"nmalencic@gmail.com",
					43
				),
				Student(
					"Dejan",
					"Bordjoški",
					"RA-053/2015",
					"bordjoski.dejan@gmail.com",
					43
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/LPRS2/lab5"),
			]
		),
		Solution(
			"https://github.com/NikolaMal/Stoljpi_za_duck_hunt", # Git repo
			"https://www.youtube.com/watch?v=vlJk6v707PM", # Youtube
			"https://github.com/NikolaMal/Stoljpi_za_duck_hunt/blob/master/Stoljpi_za_duck_hunt/Stoljpi_Project/implementation/download.bit", # Bit file
			"https://github.com/NikolaMal/Stoljpi_za_duck_hunt/blob/master/stoljpi_doc.pdf" # Doc file
		)
	),
	Project(
		"Worms",
		45,
		4,
		Team(
			Student[
				Student(
					"Bojan",
					"Strbac",
					"RA-82/2015",
					"bokasina@gmail.com",
					45
				),
				Student(
					"Marko",
					"Milosavljevic",
					"RA-90/2015",
					"mmarko1996@gmail.com",
					45
				),
				Student(
					"Branislav",
					"Novak",
					"RA-221/2015",
					"banenovak.bn@gmail.com",
					45
				),
				Student(
					"Stevan",
					"Popov",
					"RA-207/2015",
					"steva.popov96@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/BranislavNovak/Worms", # Git repo
			"https://www.youtube.com/watch?v=Mi3ZPkKe-oc", # Youtube
			"https://github.com/BranislavNovak/Worms/blob/master/worms.bit", # Bit file
			"https://github.com/BranislavNovak/Worms/blob/master/Worms.pdf" # Doc file
		)
	),
	Project(
		"New Rally X",
		45,
		3,
		Team(
			Student[
				Student(
					"Aleksa",
					"Rodić",
					"RA-218/2015",
					"aleksa.rodic@uns.ac.rs",
					45
				),
				Student(
					"Danka",
					"Radovanović",
					"RA-206/2014",
					"danka.radovanovic95@gmail.com",
					45
				),
				Student(
					"Nemanja",
					"Raković",
					"RA-134/2014",
					"nemus95@yahoo.com",
					45
				),
				Student(
					"Sara",
					"Brančić",
					"RA-150/2014",
					"sara.brancic@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/0x8000/new_rally_x", # Git repo
			"https://youtu.be/18Z-5beB13A", # Youtube
			"https://github.com/0x8000/new_rally_x/blob/master/NewRallyX.bit", # Bit file
			"https://github.com/0x8000/new_rally_x/blob/master/Prezentacija%2C%20dokumentacija.pdf" # Doc file
		)
	),
	Project(
		"Risico",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"The World's Hardest Game",
		45,
		3,
		Team(
			Student[
				Student(
					"Aleksa",
					"Arsic",
					"RA-119/2015",
					"aleksa.arsic.ftn@gmail.com",
					43
				),
				Student(
					"Milan",
					"Musikic",
					"RA-252/2017",
					"milan.musikic@gmail.com",
					43
				),
				Student(
					"Ivan",
					"Mitrovic",
					"RA-39/2013",
					"ivanmitrovic94@yahoo.com",
					43
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/AleksaArsic/LPRS2-WorldsHardestGame", # Git repo
			"https://youtu.be/WKC8rEK4Ln4", # Youtube
			"https://github.com/AleksaArsic/LPRS2-WorldsHardestGame/blob/master/LPRS2_Asteroids_game-master/WorldsHardestGame.bit", # Bit file
			"https://github.com/AleksaArsic/LPRS2-WorldsHardestGame/blob/master/WorldsHardestGame.docx" # Doc file
		)
	),
	Project(
		"Tap That Cat with Colors",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Pie with Rationals",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Potapanje brodića",
		45,
		4,
		Team(
			Student[
				Student(
					"Aleksandar",
					"Lazovic",
					"RA-2/2015",
					"alazovic96@gmail.com",
					43
				),
				Student(
					"Aleksandar",
					"Martinovic",
					"RA-4/2015",
					"a.martinovic996@gmail.com",
					45
				),
				Student(
					"Aleksandar",
					"Tendjer",
					"RA-167/2015",
					"tendjer@protonmail.com",
					45
				),
				Student(
					"Uros",
					"Radujko",
					"RA-179/2015",
					"urosradujko@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/stevanStevic/I2C_on_E2LP"),
			]
		),
		Solution(
			"https://github.com/uros96/potapanjeBrodica", 											# Git repo
			"https://www.youtube.com/watch?v=carpYddvtfQ", 											# Youtube
			[
				"https://github.com/uros96/potapanjeBrodica/blob/master/potapanje_brodica_master.bit",  # Bit file master
				"https://github.com/uros96/potapanjeBrodica/blob/master/potapanje_brodica_slave.bit",   # Bit file slave
			],
			"https://github.com/uros96/potapanjeBrodica/blob/master/LPRS2-Potapanje_brodica.pdf"    # Doc file
		)
	),
	Project(
		"DMA",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/LPRS2/lab5"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Tenkići",
		45,
		4,
		Team(
			Student[
				Student(
					"Stefan",
					"Koncarevic",
					"RA-235/2013",
					"knajt94@gmail.com",
					45
				),
				Student(
					"Aleksandar",
					"Gruba",
					"RA-049/2015",
					"salegruba@yahoo.com",
					45
				),
				Student(
					"Milica",
					"Damjanovic",
					"RA-185/2015",
					"milicaeo96@gmail.com",
					45
				),
				Student(
					"Stefan",
					"Misic",
					"RA-251/2017",
					"stefan_2142@outlook.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/mixa6492/battle_city_fpga"),
			]
		),
		Solution(
			"https://github.com/stefankoncarevic/Tenkici_ima_da_lete", # Git repo
			"https://www.youtube.com/watch?v=Zlc82t1uIKM", # Youtube
			"https://github.com/stefankoncarevic/Tenkici_ima_da_lete/blob/master/battle_city_design/demo/battle_city.bit", # Bit file
			"https://drive.google.com/open?id=1-SSevX1OZZwDJ7P5RfUtQV7fHGoBChEJ" # Doc file
		)
	),
	Project(
		"Super Mario",
		45,
		3,
		Team(
			Student[
				Student(
					"Stevan",
					"Stojicevic",
					"RA-205/2014",
					"stevanstojicevic95@gmail.com",
					44
				),
				Student(
					"Sebastian",
					"Jovanovski",
					"RA-222/2014",
					"cincila1995@hotmail.com",
					44
				),
				Student(
					"Marko",
					"Ruzic",
					"RA-178/2015",
					"markoruzic997@gmail.com",
					44
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/Phaustus/Super_Mario.git", # Git repo
			"https://youtu.be/JGzYIpUky0Y", # Youtube
			"https://www.dropbox.com/s/wjqw4lh5y9e6kvt/Super_Mario.bit?dl=0", # Bit file
			"https://github.com/Phaustus/Super_Mario/blob/master/Dokumentacija2.docx" # Doc file
		)
	),
	Project(
		"Galaga",
		45,
		3,
		Team(
			Student[
				Student(
					"Ivana",
					"Tesevic",
					"RA-30/2015",
					"tesevicivana@gmail.com",
					45
				),
				Student(
					"Milica",
					"Okuka",
					"RA-18/2015",
					"mokuka.okuka5@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Gvex95/Galaga"),
			]
		),
		Solution(
			"https://github.com/milicaokuka/Galaga", # Git repo
			"https://youtu.be/Ug_26g7qbuc", # Youtube
			"https://github.com/milicaokuka/Galaga/blob/master/galaga.bit", # Bit file
			"https://github.com/milicaokuka/Galaga/blob/master/Galaga.docx" # Doc file
		)
	),
	Project(
		"Dig Dug",
		45,
		3,
		Team(
			Student[
				Student(
					"Filip",
					"Jasic",
					"RA-46/2014",
					"filipjasic8@gmail.com",
					44
				),				
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MiljanV/DigDugProject"),
			]
		),
		Solution(
			"https://github.com/fjasic/DigDugProject", # Git repo
			"https://www.youtube.com/watch?v=jG-Kl1YIchY", # Youtube
			"https://github.com/fjasic/DigDugProject/blob/master/digdug.bit", # Bit file
			"https://github.com/fjasic/DigDugProject/blob/master/DigDug_dokumentacijaa.doc" # Doc file
		)
	),
	Project(
		"麻将 – Mahjong",
		45,
		3,
		Team(
			Student[
				Student(
					"Isidora",
					"Isailovic",
					"RA-141/2015",
					"isidora.doo@gmail.com",
					45
				),
				Student(
					"Jovana",
					"Mihic",
					"RA-163/2015",
					"jovanamihic.29.10@gmail.com",
					45
				),
				Student(
					"Aleksandra",
					"Bojic",
					"RA-133/2015",
					"aboich96@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/banovicradenko/MahjongProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/Izildur/MahjongProjekatLPRS2", # Git repo
			"https://www.youtube.com/watch?v=M91lra2sk6Q", # Youtube
			"", # Bit file
			"https://github.com/Izildur/MahjongProjekatLPRS2/blob/master/LPRS2-Mahjong.docx" # Doc file
		)
	),
	Project(
		"Pacman",
		45,
		3,
		Team(
			Student[
				Student(
					"Predrag",
					"Radonjic",
					"RA-58/2015",
					"xxx@yyy",
					40
				),
				Student(
					"Vladimir",
					"Spasojevic",
					"RA-56/2015",
					"xxx@yyy",
					44
				),
				Student(
					"Janos",
					"Bagi",
					"RA-59/2015",
					"jany.bagi@gmail.com",
					44				
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MaticMarko/PacmanProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/BagiJ/PacmanLPRS2", # Git repo
			"https://www.youtube.com/watch?v=dU5IELAtIAg", # Youtube
			"", # Bit file
			"https://github.com/BagiJ/PacmanLPRS2/blob/master/Pacman.docx" # Doc file
		)
	),
	Project(
		"Trap Adventure",
		45,
		4,
		Team(
			Student[
				Student(
					"Filip",
					"Baba",
					"RA-247/2016",
					"ficke96@gmail.com",
					45
				),
				Student(
					"Dejana",
					"Radić",
					"RA-193/2015",
					"dejanar405@gmail.com",
					45
				),
				Student(
					"Nikola",
					"Sakić",
					"RA-230/2015",
					"nikolasakic@hotmail.rs",
					45
				),
				Student(
					"Aleksandar",
					"Rapaić",
					"RA-198/2012",
					"aleksandar.rapaic@gmail.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/blackhawkmc/Trap_Adventure", # Git repo
			"https://www.youtube.com/watch?v=n4gA8iTTFBE", # Youtube
			"https://github.com/blackhawkmc/Trap_Adventure/blob/master/battle_city_design/demo/TrapAdventure.bit", # Bit file
			"https://github.com/blackhawkmc/Trap_Adventure/blob/master/TrapAdventure.doc" # Doc file
		)
	),
	Project(
		"Ice Climber",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Lode Runner",
		45,
		2,
		Team(
			Student[
				Student(
					"Filip",
					"Mihić",
					"RA-19/2015",
					"fikimihic@gmail.com",
					0
				),
				Student(
					"Marko",
					"Mihić",
					"RA-149/2013",
					"mihicmarkons@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Zagrađivanje",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		)
	),
	Project(
		"Advance Tetris",
		45,
		3,
		Team(
			Student[
				Student(
					"Sandra",
					"Bugarin",
					"RA-39/2015",
					"sandra.bugarin3@gmail.com",
					44
				),
				Student(
					"Maja",
					"Bugarin",
					"RA-38/2015",
					"bugarin.makiii96@gmail.com",
					44
				),
				
				Student(
					"Ksenija",
					"Jovanovic",
					"RA-88/2015",
					"ksenija.jo996@gmail.com",
					44
				),
				
				Student(
					"Aleksandra",
					"Jamina",
					"RA-55/2015",
					"aleksandra2606996@yahoo.com",
					44
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Nevernik/dr_Mario_E2LP"),
				URL("https://github.com/boza94/pizeo_buzz"),
			]
		),
		Solution(
			"https://github.com/Sandra2606996/MSAK_tetris", # Git repo
			"https://www.youtube.com/watch?v=Q_IEFTvD00M", # Youtube
			"https://github.com/Sandra2606996/MSAK_tetris/blob/master/tetris.bit", # Bit file
			"https://github.com/Sandra2606996/MSAK_tetris/blob/master/TETRIS.docx" # Doc file
		)
	),
	Project(
		"Tower Defence",
		45,
		4,
		Team(
			Student[
				Student(
					"Branislav",
					"Gamf",
					"RA-128/2015",
					"banegamf95@gmail.com",
					45
				),
				Student(
					"Dusan",
					"Kenjic",
					"RA-130/2015",
					"k.dule96@gmail.com",
					45
				),
				Student(
					"Nikola",
					"Cvetanovski",
					"RA-136/2015",
					"djnik8225@gmail.com",
					45
				),
				Student(
					"Stefan",
					"Jovanovic",
					"RA-234/2013",
					"stefanj94@live.com",
					45
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/stefan9x/lprs2-TowerDefence", # Git repo
			"https://www.youtube.com/watch?v=-AOyvGvH7hY", # Youtube
			"https://github.com/stefan9x/lprs2-TowerDefence/blob/master/towerdefence.bit", # Bit file
			"https://github.com/stefan9x/lprs2-TowerDefence/blob/master/TowerDefence-dokumentacija.docx" # Doc file
		)
	),
	Project(
		"8-bit MIDI",
		45,
		3,
		Team(
			Student[
				Student(
					"Srdjan",
					"Usorac",
					"RA-60/2015",
					"susorac96@gmail.com",
					45
				),
				Student(
					"Igor",
					"Ilic",
					"RA-152/2015",
					"igorilic03@yahoo.com",
					45
				),
				Student(
					"Savo",
					"Dragovic",
					"RA-117/2015",
					"savo.dragovic1997@gmail.com",
 					45
 				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/boza94/pizeo_buzz"),
				URL("https://github.com/rondor1/Buzzer-synthesizer"),
			]
		),
		Solution(
			"https://github.com/SrdjanUske/8-bit-MIDI", # Git repo
			"https://www.youtube.com/watch?v=j6Yf_29xFwE&feature=youtu.be", # Youtube
			"https://github.com/SrdjanUske/8-bit-MIDI/blob/master/project/8-bit-MIDI.bit", # Bit file
			"https://github.com/SrdjanUske/8-bit-MIDI/blob/master/docs/dokumentacija.docx" # Doc file
		)
	),
	
]

additional = URL[
	# Making bit file.
	"https://www.youtube.com/watch?v=RBa6gx5Mx5c",
	# VGA slow motion.
	"https://www.youtube.com/watch?v=3BJU2drrtCM",
	# Presentations.
	# Fun.
]

###############################################################################

N_projects = length(projects)
@show N_projects

function no_of_students(project::Project)
	if project.team.members[1].name == "Name"
		return 0
	else
		return length(project.team.members)
	end
end
N_students = sum(map(no_of_students, projects))
@show N_students

function project_taken(project::Project)
	!any(map((member) -> member.name == "Name", project.team.members))
end

function project_done(project::Project)
	s = project.solution
	done = s.repo != "https://github.com/X/Y" && s.youtube != "" && s.doc != ""
		#s.release_bit != "" 
	return done
end

if true
	for project in projects
		if project_taken(project) && !project_done(project)
			println("Not done: ", project.name)
		end
	end
end

if false
	resources = Set{URL}()
	for project in projects
		for r in project.spec.resources
			push!(resources, r)
		end
	end
	
	for r in resources
		println("Resource: ", r)
	end
end

N_youtube = 0
for project in projects
	if project_taken(project) && project.solution.youtube != ""
		N_youtube += 1
	end
end
@show N_youtube

if false
	println("Youtube URLs:")
	for project in projects
		if project_taken(project) && project.solution.youtube != ""
			println(project.solution.youtube)
		end
	end
end

println("End")

###############################################################################

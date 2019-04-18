#!/usr/bin/env julia
###############################################################################

include("Gen_Struct_and_Constructor.jl")


gen_struct_and_constructor_with_must_specify(
	:Student,
	false,

	:name,       :String,
	:surname,    :String,
	:index,      :String,
	:email,      :String,
	:points,     :Int,
)

gen_struct_and_constructor_with_must_specify(
	:Team,
	false,

	:pre_registration, :String,
	:members,          :(Vector{Student}),
)

const URL = String

gen_struct_and_constructor_with_must_specify(
	:Spec,
	false,
	
	:sequel,         :Bool,
	:have_support,   :Bool,
	:text,           :String,
	:resources,      :(Vector{URL}),
)

gen_struct_and_constructor_with_must_specify(
	:Solution,
	false,
	
	:repo,           :URL,
	# Short youtube presentation.
	:youtube,        :URL,
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	:release_bit,    :(Union{URL,Vector{URL}}),
	# Short project documentation.
	# Could set URL to file in github master blob.
	:doc,            :URL,
)

gen_struct_and_constructor_with_must_specify(
	:Project,
	false,
	
	:name,              :String,
	:points,            :Int,
	:min_team_members,  :Int,
	:team,              :Team,
	:spec,              :Spec,
	:solution,          :Solution,
)

###############################################################################

projects = Project[
	Project(
		name             = "Legend Of Zelda",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = true,
			have_support = true,
			text = """
			""",
			resources = URL[
				URL("https://github.com/CubeLord/LPRS2-Zelda.git"),
				URL("https://www.youtube.com/watch?v=0CTFHpnBlLo"),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Šah",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Nemanja, Mihajlo, Milan",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = false,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL(""),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Racing Kings",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Miloš, Slobodan, Arsenije",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = false,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL(""),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Advance Tetris",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Andrej, Jovana",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = true,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL("https://github.com/Sandra2606996/MSAK_tetris"),
				URL("https://github.com/boza94/pizeo_buzz"),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Bomberman",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Nemanja, Aleksa, Saša",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = true,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL("https://github.com/KakucaNebojsa/Boomberman"),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "World's Hardest Game",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Nikola, Miodrag, Laza",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = true,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL("https://github.com/AleksaArsic/LPRS2-WorldsHardestGame"),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Heads foodball",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Petar, Tamara, Miloš, Radovan",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = false,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL(""),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Potapanje brodića",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Uroš, Vladimir, Srđan",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = true,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL("https://github.com/uros96/potapanjeBrodica"),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
	),
	Project(
		name             = "Donkey Kong",
		points           = 45,
		min_team_members = 3,
		team = Team(
			pre_registration = "Nikolina, Mihajlo, Luka",
			members = Student[
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
				Student(
					name    = "",
					surname = "",
					index   = "RA-xxx/20yy",
					email   = "@",
					points  = 0,
				),
			],
		),
		spec = Spec(
			sequel       = false,
			have_support = false,
			text = """
			""",
			resources = URL[
				URL(""),
				URL(""),
			],
		),
		solution = Solution(
			repo        = "",
			youtube     = "",
			release_bit = "",
			doc         = "",
		),
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

#=
#TODO Sum all marks, so we could check if studends changed mark field.

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
=#

println("End")

###############################################################################

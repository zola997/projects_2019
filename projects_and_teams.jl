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

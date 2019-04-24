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
	:Spec,
	false,
	
	:sequel,           :Bool,
	:have_support,     :Bool,
	:text,             :String,
	:resources,        :(Vector{URL}),
	:sequel_resources, :(Dict{String, Solution}),
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

include("projects_and_teams.jl")

###############################################################################
# Common stats.

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

###############################################################################
# Project stats.

function project_taken(project::Project)
	project.team.pre_registration != "" ||
		!any(map((member) -> member.name == "", project.team.members))
end

function project_done(project::Project)
	s = project.solution
	done = s.repo != "https://github.com/X/Y" && s.youtube != "" && s.doc != ""
		#s.release_bit != "" 
	return done
end

if false
	for project in projects
		if project_taken(project) && !project_done(project)
			println("Not done: ", project.name)
		end
	end
end

if false
	println("Project names:")
	for p in projects
		println(p.name)
	end
end

if true
	println("Free projects:")
	for p in projects
		if !project_taken(p)
			println(p.name)
		end
	end
end

###############################################################################
# Generating tex.

if false
	open("Projects.gen.tex", "w") do f
		w(args...) = println(f, args...)
		for (idx, p) in enumerate(projects)
			w("\\subsection{Пројекат $idx}")
			w("\\begin{frame}")
			w("	\\frametitle{\\textbf{$(p.name)}}")
			
			w("	\\begin{itemize}")
				i(s) = w("		\\item " * s)
				if p.spec.sequel
					if p.spec.have_support
						h = " (уз помоћ старијих колега)"
					else
						h = ""
					end
					i("Наставак од прошле године" * h)
				end
				if p.team.pre_registration != ""
					i("Заузето ($(p.team.pre_registration))")
				end
				
				for r in p.spec.resources
					if r != ""
						i("\\url{$r}")
					end
				end
				for (n, s) in p.spec.sequel_resources
					if s.youtube != ""
						i("\\url{$(s.youtube)}")
					end
				end
			w("	\\end{itemize}")
			w("\\end{frame}")
			w("")
		end
	end
	run(`latexmk -silent -pdf LPRS2_projekti.tex`)
end

###############################################################################

#TODO Sum all marks, so we could check if studends changed mark field.

#=
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

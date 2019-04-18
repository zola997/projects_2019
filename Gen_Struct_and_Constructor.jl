
###############################################################################

module Gen_Type_and_Constructor
end

###############################################################################

if VERSION < v"1.0"
	error("Must have version above v1.0!")
end

###############################################################################

macro must_specify(var)
	quote
		throw(ArgumentError("must specify " * $(string(var))))
	end
end

###############################################################################

# Use something like this to find out how to make Expr() tree.
#	ex = Meta.parse("""
#		mutable struct Spec
#			full_bridge::Bool
#		end
#	""")


function gen_struct_and_constructor_with_must_specify(
	name,
	mutable,
	field_type_arr...
)
	@assert length(field_type_arr) % 2 == 0
	
	ft = []
	for i in 1:length(field_type_arr)>>1
		push!(ft,
			(
				field_type_arr[(i-1)*2+1],
				field_type_arr[(i-1)*2+2]
			)
		)
	end
	
	b = []
	for (f, t) in ft
		push!(b, Expr(:(::), f, t))
	end
	ex = Expr(
		:struct,
		mutable,
		name,
		Expr(:block, b...)
	)
	eval(ex)
	
	
	kws = []
	args = []
	for (f, t) in ft
		push!(
			kws,
			Expr(
				:kw,
				Expr(
					:(::),
					f,
					t
				),
				Expr(
					:macrocall,
					Symbol("@must_specify"),
					LineNumberNode(1, :none),
					f
				)
			)
		)
		push!(
			args,
			f
		)
	end
	ex = Expr(
		:function,
		Expr(
			:call,
			name,
			Expr(
				:parameters,
				kws...
			)
		),
		Expr(
			:block,
			Expr(
				:call,
				name,
				args...
			)
		)
	)
	eval(ex)
end


function gen_struct_and_constructor_with_default_nothing(
	name,
	mutable,
	field_type_arr...
)
	@assert length(field_type_arr) % 2 == 0
	
	ft = []
	for i in 1:length(field_type_arr)>>1
		push!(ft,
			(
				field_type_arr[(i-1)*2+1],
				field_type_arr[(i-1)*2+2]
			)
		)
	end
	
	b = []
	for (f, t) in ft
		push!(
			b,
			Expr(
				:(::),
				f,
				Expr(
					:curly,
					:Union,
					t,
					:Void
				),
			)
		)
	end
	ex = Expr(
		:struct,
		mutable,
		name,
		Expr(:block, b...)
	)
	eval(ex)
	
	
	kws = []
	args = []
	for (f, t) in ft
		push!(
			kws,
			Expr(
				:kw,
				Expr(
					:(::),
					f,
					Expr(
						:curly,
						:Union,
						t,
						:Void
					),
				),
				:nothing
			)
		)
		push!(
			args,
			f
		)
	end
	ex = Expr(
		:function,
		Expr(
			:call,
			name,
			Expr(
				:parameters,
				kws...
			)
		),
		Expr(
			:block,
			Expr(
				:call,
				name,
				args...
			)
		)
	)
	eval(ex)
end

###############################################################################

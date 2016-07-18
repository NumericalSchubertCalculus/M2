needs "../code/solveViaMonodromy.m2"
setRandomSeed 0
needsPackage "ExampleIdeals"
n = 5
S = gens cyclicRoots(n,CC)
R = ring S
polys = flatten entries S
ind = flatten apply(#polys,i-> -- parameteric coefficients 
    apply(exponents polys#i, t->(i,t))
    )
AR = CC[apply(ind,i->A_i)][gens R] 
polysP = for i to #polys-1 list -- parameteric coefficients 
         sum(exponents polys#i, t->A_(i,t)*AR_(t))
SP = matrix{polysP}

c0 = point{ 
    flatten apply(polys,f->(
	    r := # exponents f;
	    t := apply(r-1, i->random CC);
	    t | { -sum t }
	    )) 
    }
pre0 = point{toList(n:1_CC)}
end ------------------------------------------------

restart
load "cyclic.m2" 
plugin'c0 = map(R,AR,vars R | matrix c0) -- the actual polynomial system we solve
apply(polysP,p->plugin'c0 p) 
stop = (n,L)->n>1
getDefault Software
{*
setDefault(Software=>PHCPACK)
*}
elapsedTime sols = solveViaMonodromy(SP,c0,{pre0},StoppingCriterion=>stop);

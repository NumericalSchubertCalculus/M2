--    Date: Thu, 12 Dec 2002 17:07:17 -0800
--    From: David Eisenbud <de@msri.org>
--    To: Mike Stillman <mike@polygon.math.cornell.edu>,
--       Dan Grayson <dan@math.uiuc.edu>
--    Subject: M2 bug?
--    Reply-To: de@msri.org
--    Content-Disposition: inline
--    
--    Dear Mike and Dan,
--    
--    Here's code that produces a bug in my system
--    (fromDual should produce an ideal with 6 linear
--    forms in it in BOTH cases). Please let me know
--    if you see something I've done wrong...
--    
--    	Thanks
--    		David
--    

kk = ZZ/101
S=kk[vars(0..6)]
--these are correct
i=ideal fromDual matrix{{a^4}}
print betti i
assert( 6 == (tally degrees source gens i)_{1} )
--these should be the same (F is just a power of a linear form)
--but are not!!
F=(random(S^1,S^{-1}))^4
--power of a linear form.
j=ideal fromDual F
print betti j
assert( 6 == (tally degrees source gens j)_{1} )

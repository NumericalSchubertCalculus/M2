--		Copyright 1997 by Daniel R. Grayson

profile = method()

record := new MutableHashTable

profile Function := f -> profile (toString f, f)

profile(String,Function) := (n,f) -> (
     record#n = m := new MutableList from {0,0.};
     args -> (
	  ret := timing f args;
     	  m#0 = m#0 + 1;
	  m#1 = m#1 + ret#0;
	  ret#1
	  )
     )

profileSummary = new Command from (() -> 
     scan(sort pairs record, (n,v) -> 
	  if v#0 != 0 then
	  << n << ": "
	  << v#0 << " times, used " 
	  << v#1 << " seconds"
	  << endl
	  ))

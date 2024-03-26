phcPresent := run ("type phc >/dev/null 2>&1") === 0
phcVersion := if phcPresent then replace("PHCv([0-9.]+) .*\n","\\1",get "! phc --version")
phcVersionNeeded := "2.3.80"
phcPresentAndModern := phcPresent and match("^[0-9.]+$",phcVersion) and phcVersion >= phcVersionNeeded

newPackage(
    "NumericalSchubertCalculus",
    Version => "1.23", 
    Date => "Mar 2024",
    Authors => {
	{Name => "Anton Leykin", 
	    Email => "leykin@math.gatech.edu", 
	    HomePage => "https://antonleykin.math.gatech.edu"},
	{Name => "Abraham Martin del Campo", 
	    Email => "abraham.mc@cimat.mx", 
	    HomePage => "http://www.cimat.mx/~abraham.mc"},
	{Name => "Frank Sottile", 
	    Email => "sottile@math.tamu.edu", 
	    HomePage => "http://www.math.tamu.edu/~sottile"},
	{Name => "Ravi Vakil",
		Email => "vakil@math.stanford.edu",
		HomePage => "http://math.stanford.edu/~vakil"},
	{Name => "Jan Verschelde",
		Email => "jan@math.uic.edu",
		HomePage => "http://www.math.uic.edu/~jan/"}
	},
    Keywords => {"Flag Varieties", "Numerical Algebraic Geometry"},
    Headline => "numerical methods in Schubert Calculus",
    PackageImports => {
	"Schubert2",
	"PHCpack",
	"NumericalAlgebraicGeometry",
	"MonodromySolver"
	},
    AuxiliaryFiles => true,
    CacheExampleOutput => true,
    OptionalComponentsPresent => phcPresentAndModern,
    DebuggingMode => false
    )

importFrom_NumericalAlgebraicGeometry {"randomUnitaryMatrix"}
export { 
   "changeFlags",
   "resetStatistics",
   "printStatistics",
   "setVerboseLevel", 
   "solveSchubertProblem",
   "OneHomotopy"
   }
protect Board
protect IsResolved
protect Fathers
protect Children
protect FlagM
protect CriticalRow
protect Solutions
protect SolutionsSuperset -- temporary

NC = infinity -- legacy convention: NC means no checker in that column
FFF = CC -- OUR FIELD: in early experiments RR was used as well
ERROR'TOLERANCE = 0.001 -- rough tolerance used to prevent poorly conditioned random choices (e.g., of flags) 

------------------
-- Debug Level --
------------------
-- 0 = no debug mode (default)
-- 1 = print progress info and time main processes
-- 2 = ... + checkerboard steps info
-- >2 = new experimental stuff kicks in
DBG = 0

---------------------
-- setVerboseLevel --
---------------------
--
-- Function to change different levels of 
-- information printed while running
---------------------
-- input: integer number between 0,1,2, or greater
--
setVerboseLevel = method()
setVerboseLevel ZZ := i->DBG=i
--
VERIFY'SOLUTIONS = true
BLACKBOX = false

--INITIALIZING THE KEYS OF NODE
--Board= symbol Board

setDebugOptions = method(Options=>{"debug"=>null,"verify solutions"=>null,"blackbox"=>null})
installMethod(setDebugOptions, o -> () -> scan(keys o, k->if o#k=!=null then
	if k == "debug" then DBG = o#k
	else if k === "verify solutions" then VERIFY'SOLUTIONS = o#k
	else if k === "blackbox" then BLACKBOX = o#k
	))
 


load "NumericalSchubertCalculus/playing-checkers.m2"
load "NumericalSchubertCalculus/PHCpack-LRhomotopies.m2"
load "NumericalSchubertCalculus/pieri.m2"
load "NumericalSchubertCalculus/service-functions.m2"
--load "NumericalSchubertCalculus/UnderDevelopment/galois.m2"


-------------------
-- Documentation --
-------------------
beginDocumentation()
load "NumericalSchubertCalculus/doc.m2"
load "NumericalSchubertCalculus/PHCpack-LRhomotopies-doc.m2"

-------------------
-- Tests         --
-------------------
TEST ///
load "NumericalSchubertCalculus/TST/4lines.m2"
///
TEST ///
load "NumericalSchubertCalculus/TST/2e4-G26.m2"
///
TEST ///
load "NumericalSchubertCalculus/TST/21e3-G36.m2"
///
TEST ///
load "NumericalSchubertCalculus/TST/4LinesOsculating_changeFlags.m2"
///
end ---------------------------------------------------------------------
-- END OF THE PACKAGE
---------------------------------------------------------------------------
restart
check "NumericalSchubertCalculus"
installPackage "NumericalSchubertCalculus"
installPackage ("NumericalSchubertCalculus", RerunExamples=>true)
installPackage ("NumericalSchubertCalculus", RunExamples=>false)

--n = 6;
--SchubProb =  matrix{{3, 2,4,6}};
--(f, p, s) := LRtriple(n,SchubProb);
--(R, pols, sols, fixedFlags, movedFlag, solutionPlanes) = parseTriplet(f, p, s)
viewHelp NumericalSchubertCalculus
--first PieriHomotopies(2,2)

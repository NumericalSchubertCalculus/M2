doc ///
  Key
    "LRhomotopies"
  Headline
    interface to the Littlewood-Richardson homotopies in PHCpack
  Description
    Text
      Interfaces the functionality of the software {\tt PHCpack}
      to solve Schubert problems with Littlewood-Richardson homotopies,
      a tool in {\em numerical Schubert calculus}.
      The software {\tt PHCpack} is available at
      @HREF"http://www.math.uic.edu/~jan/download.html"@.
      The site provides source code and its executable versions {\tt phc}.
      The user must have the executable program {\tt phc} available,
      preferably in the execution path.
  Caveat
    The program "phc" (at least version 2.4.27, but preferably higher)
    of PHCpack needs to in the path for execution.
///

doc ///
  Key
    LRrule
    (LRrule,ZZ,Matrix)
  Headline
    computes the product of Schubert classes using geometric Littlewood-Richardson rule
  Usage
    s = LRrule(n,M)
  Inputs
    n:ZZ
      the dimension of the ambient space of the Grassmannian $Gr(k,n)$.
    M:Matrix
      whose rows encode Schubert conditions.
      Each row is a $k+1$-tuple, {m,b}, where $m$ is a nonegative integer and $b$ a bracket (see @TO bracket2partition@ for details).
      The bracket $b$ represents a Schubert condition and $m$ is its multiplicity.
  Outputs
    s:String
      contains an equation, with at the left the
      product of Schubert conditions and at the right the result as a formal sum of brackets.
  Description
    Text
      LRrule uses the geometric Littlewood-Richardson rule to compute a product in the Chow ring of the Grassmannian.  
      This writes a product of brackets as a formal sum of brackets, which represents an intersection of Schubert varieties as a formal sum of Schubert varieties.
      When the input matrix M is a Schubert problem, this gives the number of solutions to that Schubert problem.
      The command @TO LRnumber@ calls LRrule and extracts the number of solutions.
    Example
      R = ZZ;
      n = 7;
      M = matrix{{3, 3, 6, 7},{2, 3, 5, 7}};
      LRrule(n,M)
    Text
      The output: {\tt [ 3 6 7 ]^3*[ 3 5 7 ]^2 = +10[1 2 3]} means that the Schubert problem {\tt [ 3 6 7 ]^3*[ 3 5 7 ]^2} in multiplicative form 
      has 10 solution 3-planes.   That is, there are 10 3-planes that satisfy three Schubert conditions given by the bracket {\tt [3, 6, 7]} and
      two conditions given by the bracket {\tt [3, 5, 7]}.
    
      More generally, this computes a product in the Chow ring:
    Example
      LRrule(7, matrix{{2,3,6,7},{1,3,5,7},{1,2,5,7}})
  Caveat
      The Littlewood-Richardson homotopy algorithm requires a Schubert problems (sum of codimensions equals the dimension of the Grassmannian).
///

doc ///
  Key
    RandomSeed
  Headline
    seed for the random number generators.
  Description
    Text
      To avoid singularities during complex path following,
      the homotopy methods use a random constant.
      The flags generated in @TO LRtriple@ also depend on the values
      generated by the random number generator.
      Fixing the value of RandomSeed leads to reproducible runs.
///

doc ///
  Key
    [LRtriple,RandomSeed]
  Headline
    option to set the seed of the random number generators.
  Usage
    LRtriple(...,RandomSeed=>ZZ)
  Description
    Text
      Use {\tt RandomSeed=>12345} to set the seed to 12345.
      This can be used to make the generation of random flas deterministic and hence reproducible.
///

doc ///
  Key
    WorkingPrecision
    [LRtriple,WorkingPrecision]
  Headline
    option to raise the working precision to double double or quad double.
  Usage
    LRtriple(...,WorkingPrecision=>ZZ)
  Description
    Text
      The default working precision is double precision.
      Use {\tt WorkingPrecision=>1} for double double precision.
      Use {\tt WorkingPrecision=>2} for quad double precision.
///

doc ///
  Key
    LRtriple
    (LRtriple,ZZ,Matrix)
  Headline
    uses Littlewood-Richardson homotopy algorithm to solve a Schubert problem
  Usage
    LRtriple(n,M)
    LRtriple(n,M, RandomSeed=>12345)
    LRtriple(n,M, WorkingPrecision=>2)
  Inputs
    n:ZZ
       the dimension of the ambient space of the Grassmannian $Gr(k,n)$.
    M:Matrix
      whose rows encode the Schubert condition.
      Each row is a $k+1$-tuple, $\{m,b\}$, where $m$ is a nonegative integer and $b$ a bracket (see bracket2partition for details).
      The bracket $b$ represents a Schubert condition and $m$ is its multiplicity in this Schubert problem.
  Outputs
    :Sequence
      first a string with the generic flags, the moved flags, 
      and the solution planes; then a string with the polynomial system
      solved; and thirdly a list of solutions.
  Description
    Text
      LRtriple applies the Littlewood-Richardson homotopies
      to solve a generic instance of a Schubert problem defined
      by at least three Schubert conditions.  The flags defining the instance are generated in the routine.

      Use the method parseTriplet to parse the three strings f, p, and s
      into proper Macaulay2 polynomials, solution lists, and complex matrices.

      The Schubert problem  {\tt [2 4 6]^3} on $G(3,6)$ has two solutions.
      This example computes the solutions to an instance given by random flags.
    Example
      R := ZZ; n := 6; m := matrix{{3, 2, 4, 6}};
      result := LRtriple(n,m);
      stdio << "the fixed flags :\n" << result_0;
      stdio << "polynomial system solved :\n" << result_1;
      stdio << "solutions :\n" << result_2;
  SeeAlso
    parseTriplet
    wrapTriplet
///

doc ///
  Key
    parseTriplet
    (parseTriplet,String,String,String)
  Headline
    Parses the output from LRtriple into Macaulay2 objects.
  Usage
    (R, pols, sols, fixedFlags, movedFlag, solutionPlanes) = parseTriplet(f, p, s)
  Inputs
    f:String
      represents the fixed flag.
    p:String
      represents a polynomial system.
    s:String
      solutions to the polynomial system.
  Outputs
    R:Ring
      a polynomial ring with complex floating-point coefficients
      and in the variables used in the systems p.
    pols:List
      list of polynomial equations in the ring R.
    sols:List
      list of solutions of the system pols.
    fixedFlags:List
      list of the fixed flags, as matrices of complex numbers.
    movedFlag:List
      the moved flag, the flag not listed here is the identity matrix.
    solutionPlanes:List
      list of complex matrices which store the solution planes.
  Description
    Text
      parseTriplet processes the output of LRtriple for other methods in @TO NumericalSchubertCalculus@.
    Example
      (f, p, s) = LRtriple(6,matrix{{3, 2, 4, 6}});
      (R, pols, sols, fixedFlags, movedFlag, solutionPlanes) = parseTriplet(f, p, s)
      vars(R)
      peek sols
      peek solutionPlanes
  SeeAlso
    LRtriple
    wrapTriplet
///

doc ///
  Key
    wrapTriplet
    (wrapTriplet,String,String,String)
  Headline
    Wraps a flag, system, and solutions into one string for phc -e.
  Usage
    w = wrapTriplet(f,p,s)
  Inputs
    f:String
      represents the fixed flag
    p:String
      represents a polynomial system
    s:String
      solutions to the polynomial system
  Outputs
    w:String
      suitable for input to cheater in phc -e
  Description
    Text
      To pass the output of LRtriple to the LRcheater,
      the flag, the polynomial system and its solutions
      are wrapped into one string.
///

doc ///
  Key
    LRcheater
    (LRcheater,ZZ,Matrix,String)
  Headline
    A cheater's homotopy to a real Schubert triple intersection problem
  Usage
    t = LRcheater(n,m,w)
  Inputs
    n:ZZ
      the ambient dimension
    m:Matrix
      in the rows are the intersection conditions,
      the first element of each row is the number of times
      the intersection bracket must be taken.
    w:String
      the outcome of LRtriple(n,m), wrapped into string.
  Outputs
    t:String
      solutions to a a real triple Schubert intersection problem.
  Description
    Text
      A cheater's homotopy between two polynomial systems connects
      a generic instance to a specific instance.
      This is similar in function to @TO changeFlags@

      The example below
      solves a generic instance of {\tt[2 4 6]^3}, followed by a cheater
      homotopy to a real instance.
    Example
      R := ZZ;
      n := 6;
      m := matrix{{3, 2, 4, 6}};
      t := LRtriple(n,m);
      w := wrapTriplet(t);
      --result := LRcheater(n,m,w);
      --(rps, pols, sols, flag) = parseTriplet(result);
      --stdio << "real fixed flag :\n" << flag;
      --stdio << "polynomial system solved :\n" << pols;
      --stdio << "solutions :\n" << sols;
///

doc ///
  Key
    PieriRootCount
    (PieriRootCount,ZZ,ZZ,ZZ)
  Headline
    the number of solutions to a generic Pieri problem
  Usage
    r = PieriRootCount(m,p,q)
  Inputs
    m:ZZ
      the dimension of the input planes
    p:ZZ
      the dimension of the output planes
    q:ZZ
      the degree of the solution curves producing p-planes
  Outputs
    r:ZZ
      the number of curves of the degree $q$ in the Grassmannian $Gr(p,m+p)$ which produce $p$-planes
      that meet $m\cdot p + q\cdot (m+p)$ generic $m$-planes at given general interpolation points.
      This is a quantum intersection number
  Description
    Text
      The example below computes the number of linear curves
      which produce 2-planes that meet 2*3 + 1*(2 + 3) = eleven
      generic 3-planes at some eleven distinct interpolation points.
    Example
      r := PieriRootCount(3,2,1);
      print r
///

doc ///
  Key
    PieriHomotopies
    (PieriHomotopies,ZZ,ZZ)
  Headline
    runs the Pieri homotopies to solve a general hypersurface problem
  Usage
    (inplanes, outplanes) = PieriHomotopies(m,p)
  Inputs
    m:ZZ
      the dimension of the input planes
    p:ZZ
      the dimension of the output planes
  Outputs
    t:List
      list of lists, the first list contains the input m-planes,
      generated at random; the second list holds the output p-planes,
      p-planes, which meet the input m-planes
  Description
    Text
      This solves the Schubert intersection problem on $Gr(p,m+p)$ of the $p$-planes that meet $m\cdot p$ general $m$-planes.
      It is a simple Schubert problem $l_1,\dotsc,l_{mp}$, where each Schubert condition $l_i$ has codimension 1.
      This is less general than @TO solveSimpleSchubert@, which allows up to two of the $\ell_i$ to not have codimension 1
      
      The example below computes the two lines that meet four given lines in projective 3-space.

      To verify the first intersection condition,
      we concatenate the first input plane with the first output plane.
      The determinant of the concatenated matrix should have real and
      imaginary parts of the same magnitude as the machine precision.
    Example
      (ipt, otp) := PieriHomotopies(2,2);
      print ipt
      print otp
      in0 = ipt_0
      out0 = otp_0
      m = in0|out0
      det m
///

doc ///
  Key
    [PieriRootCount,Verbose]
    [PieriHomotopies,Verbose]
    [LRrule,Verbose]
    [parseTriplet,Verbose]
    [LRtriple,Verbose]
    [LRcheater,Verbose]
  Headline
    request verbose feedback
///

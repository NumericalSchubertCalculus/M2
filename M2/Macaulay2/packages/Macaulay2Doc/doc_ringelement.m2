doc ///
Node
  Key
    exponents
   (exponents, MonoidElement)
   (exponents, RingElement)
  Headline
    the exponents of a polynomial
  Usage
    exponents m
  Inputs
    m:{RingElement,MonoidElement}
      a monomial
  Outputs
    :List
      for a monomial, provides the list of exponents;
      for a polynomial, provides a list whose elements are the lists of exponents of the terms of @TT "f"@
  Description
    Example
      R = ZZ/101[x,y,z];
      exponents (f = x^2 - 7 + x*y*z^11 + y)
      leadMonomial f
      exponents leadMonomial f
  SourceCode
    (exponents, RingElement)
  SeeAlso
    content
    coefficients
    listForm
    standardForm
    monomials    

Node
  Key
    content
   (content, RingElement)
   (content, RingElement, RingElement)
  Headline
    the content of a polynomial
  Usage
    content f
    content(f, x)
  Inputs
    f:RingElement
    x:RingElement
      a variable in the ring of @TT "f"@
  Outputs
    :Ideal
      the content of a matrix or polynomial
  Description
    Text
      The content is the ideal in the base ring generated by the coefficients.
    Example
      R = ZZ[x,y]
      content(4*x + 6*x^5)
      content(4*x + 6*x^5, x)
      content(4*x + 6*x^5, y)
      generator oo
  SourceCode
    (content, RingElement)
    (content, RingElement, RingElement)
  SeeAlso
    exponents
    coefficients
    listForm
    standardForm
    monomials

Node
  Key
    listForm
   (listForm, RingElement)
   (listForm, MonoidElement)
  Headline
    convert to list form
  Usage
    listForm f
  Inputs
    f:{RingElement,MonoidElement}
  Outputs
    :List
       the polynomial or monomial in a form represented by nested lists.
  Description
    Text
      A monomial is represented by the list of its exponents.
      A polynomial is represented by lists of pairs @TT "(m, c)"@x, one for each term,
      where @TT "m"@ is a list of exponents for monomial, and @TT "c"@ is the coefficient.
    Example
      R = ZZ/101[x,y,z];
      listForm (x^2 - 7 + x*y*z^11 + y)
  SourceCode
    (listForm, RingElement)
  SeeAlso
    standardForm
    content
    coefficients
    exponents
    monomials

Node
  Key
    standardForm
   (standardForm, RingElement)
   (standardForm, MonoidElement)
  Headline
    convert to standard form
  Usage
    standardForm f
  Inputs
  Outputs
    :HashTable
      the polynomial or monomial in a form involving hash tables.
  Description
    Text
      A polynomial is represented by hash tables in which the keys are hash tables representing the
      monomials and the values are the coefficients. The monomials themselves are represented by hash tables
      in which the keys are the variables and the values are the corresponding exponents.
    Example
      R = ZZ/101[x,y,z];
      standardForm (x^2 - 7 + x*y*z^11 + y)
  SourceCode
    (standardForm, RingElement)
  SeeAlso
    listForm
    content
    coefficients
    exponents
    monomials
///

document { 
     Key => {coefficients,
	  (coefficients,Matrix),(coefficients,RingElement),
	  [coefficients,Monomials],[coefficients,Variables]},
     Headline => "monomials and their coefficients",
     Usage => "(M,C) = coefficients f",
     Inputs => {
	  "f" => {"a one-row ", TO "Matrix", " with ", TT "n", " columns, say, or a ", TO "RingElement", ", to
	       be interpreted as a one-by-one matrix.  (A future implementation will handle matrices with more than one row.)" },
	  Variables => List => {
	       "a list ", TT "v", " of variables.
	       If a value for this option is not specified, all of the (top-level) variables are used."
	       },
	  Monomials => {"a list or one-row matrix of monomials, each of which is formed using just variables in ", TT "v", "."}
	  },
     Outputs => {
	  "M" => Matrix => {
	       "either the value of the ", TT "Monomials", " option, if specified (converted to a one-row matrix, if necessary), or
	       a one-row matrix of those monomials appearing in ", TT "f", " that involve just variables 
	       in ", TT "v", ", in descending order.  Let ", TT "m", " denote the number of columns it has."
	       },
	  "C" => Matrix => {
	       "the ", TT "m", " by ", TT "n", " matrix ", TT "C", " such that ", TT "C_(i,j)", " is
	       the coefficient in ", TT "f_(0,j)", " of the monomial ", TT "M_(0,i)", ".
	       In other words, ", TT "C", " is the unique matrix not involving the (specified) variables
	       such that ", TT "M*C == f", ", unless a value was specified for the ", TT "Monomials", " option that did not include
	       all the monomials in the variables ", TT "v", " used by ", TT "f"
	       }
	  },
     EXAMPLE lines ///
     R = QQ[a,b,c,d,e,f][x,y];
     F = a*x^2+b*x*y+c*y^2
     (M,C) = coefficients F
     ///,
     "The resulting matrices have the following property.",
     EXAMPLE lines ///
     M*C === matrix F
     ///,
     "The Sylvester matrix of two generic quadratic forms:",
     EXAMPLE lines ///
     G = d*x^2+e*x*y+f*y^2
     P = matrix{{x*F,y*F,x*G,y*G}}
     (M,C) = coefficients P
     M*C === P
     ///,
     "We may give the monomials directly.  This is useful if we are taking coefficients
     of several elements or matrices, and need a consistent choice of monomials.",
     EXAMPLE lines ///
     (M,C) = coefficients(P, Monomials=>{x^3,y^3,x^2*y,x*y^2})
     ///,
     "If not all of the monomials are used, no error is signaled, but ", TT "M*C == P", " no longer holds.",
     EXAMPLE lines ///
     (M,C) = coefficients(P, Monomials=>{x^3,y^3})
     M*C == P
     ///,
     SeeAlso => {monomials,content,exponents,listForm,standardForm}
     }
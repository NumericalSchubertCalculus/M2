R1 = (ZZ/32003)[a, b, c, d, e, f, g, h, i]
I1 = ideal(
    f^2-7271*a*g-6394*b*g+4444*c*g+12816*d*g+6219*e*g+13102*f*g+15516*g^2-7248*a*h-14974*b*h-5319*c*h+8599*d*h+4062*e*h-4274*f*h-1200*g*h+4590*h^2+10530*a*i-7497*b*i-14819*c*i+14839*d*i-11242*e*i+1200*f*i-4590*g*i,
    e*f+1695*a*g-14165*b*g-5334*c*g+5900*d*g+8292*e*g-2170*f*g-12166*g^2-13695*a*h+4633*b*h-11902*c*h+3618*d*h+6832*e*h+15346*f*h-12548*g*h-1096*h^2+701*a*i+6001*b*i-11910*c*i-4662*d*i-3180*e*i+12548*f*i+1096*g*i,
    d*f+15109*a*g-11685*b*g+3829*c*g+3553*d*g+233*e*g-1212*f*g-5176*g^2-2884*a*h-4269*b*h-9037*c*h+3340*d*h+2074*e*h-4319*f*h-12138*g*h-12373*h^2+439*a*i+5484*b*i-3573*c*i-862*d*i+9495*e*i+12138*f*i+12373*g*i,
    c*f-8204*a*g+9388*b*g+9810*c*g-12526*d*g-6382*e*g+87*f*g-8934*g^2+4903*a*h+13609*b*h-10715*c*h-5849*d*h-8065*e*h+3141*f*h+7281*g*h+2428*h^2+8584*a*i-8762*b*i+12231*c*i+7978*d*i+5793*e*i-7281*f*i-2428*g*i,
    b*f-13376*a*g+5476*b*g+3683*c*g+10956*d*g-10913*e*g-13702*f*g-15319*g^2+8447*a*h+2413*b*h-6686*c*h+2273*d*h+12829*e*h+9939*f*h+10517*g*h+11778*h^2-6096*a*i-4270*b*i+8640*c*i+873*d*i+5380*e*i-10517*f*i-11778*g*i,
    a*f-10533*a*g-9579*b*g+3095*c*g-12346*d*g+2263*e*g-2423*f*g-10580*g^2+42*a*h-9799*b*h+8616*c*h-3788*d*h-3366*e*h+8874*f*h+3782*g*h-6389*h^2+6704*a*i+3730*b*i+1525*c*i+5789*d*i+1706*e*i-3782*f*i+6389*g*i,
    e^2-695*a*g+2107*b*g+15440*c*g-8072*d*g-3754*e*g+14141*f*g+4105*g^2+8045*a*h+14821*b*h+14731*c*h-4968*d*h+12188*e*h-12793*f*h+15642*g*h+3724*h^2+1741*a*i-6659*b*i+8722*c*i+5674*d*i+8688*e*i-15642*f*i-3724*g*i,
    d*e+15018*a*g-8745*b*g-11419*c*g-15964*d*g+13747*e*g+14363*f*g-11336*g^2-15771*a*h-5256*b*h-8228*c*h-14442*d*h-1158*e*h+2130*f*h-3017*g*h-12536*h^2-15328*a*i-7811*b*i+695*c*i-13205*d*i+9206*e*i+3017*f*i+12536*g*i,
    c*e-15169*a*g+700*b*g+340*c*g+2747*d*g-6008*e*g+9681*f*g+13502*g^2+8291*a*h+11160*b*h-12322*c*h+401*d*h-15450*e*h-12441*f*h-9023*g*h+399*h^2-11500*a*i+9575*b*i+5607*c*i+5769*d*i-1061*e*i+9023*f*i-399*g*i,
    b*e-6574*a*g-4649*b*g-11494*c*g+15737*d*g+11401*e*g+11009*f*g+9403*g^2-13660*a*h-1933*b*h-2784*c*h+10525*d*h+4827*e*h+13910*f*h+13827*g*h-5945*h^2+13427*a*i-12953*b*i+10077*c*i-15836*d*i+8690*e*i-13827*f*i+5945*g*i,
    a*e-4653*a*g-1001*b*g-8679*c*g+3322*d*g-3033*e*g+13204*f*g+14405*g^2+5612*a*h+15605*b*h-6994*c*h-6257*d*h-3593*e*h-8904*f*h+6462*g*h-10233*h^2-6926*a*i+3672*b*i+9290*c*i-9611*d*i-5501*e*i-6462*f*i+10233*g*i,
    d^2+735*a*g-4881*b*g+2814*c*g+5184*d*g-12403*e*g+14899*f*g+4059*g^2+5349*a*h+1163*b*h+14347*c*h+14622*d*h+9374*e*h+8624*f*h+11000*g*h+279*h^2-3977*a*i+12472*b*i-2219*c*i+7730*d*i-12683*e*i-11000*f*i-279*g*i,
    c*d-14299*a*g+9279*b*g+9215*c*g-2662*d*g-9090*e*g-4878*f*g+12195*g^2-15813*a*h-819*b*h+10179*c*h-5665*d*h-488*e*h+5270*f*h+640*g*h+10276*h^2-8396*a*i-7517*b*i+14755*c*i+5366*d*i+14538*e*i-640*f*i-10276*g*i,
    b*d+15677*a*g-1310*b*g+216*c*g+9419*d*g-4235*e*g+13819*f*g-14721*g^2-6595*a*h-15048*b*h+141*c*h-11705*d*h+3866*e*h+7704*f*h+15818*g*h-5501*h^2+14832*a*i-9560*b*i+15940*c*i+14318*d*i+7017*e*i-15818*f*i+5501*g*i,
    a*d-6286*a*g-6996*b*g+5078*c*g+13279*d*g-3432*e*g+12810*f*g-8150*g^2-10955*a*h+12546*b*h+11561*c*h-14265*d*h-1585*e*h-7321*f*h-5057*g*h+4042*h^2+14379*a*i+7163*b*i-14306*c*i-11225*d*i+15471*e*i+5057*f*i-4042*g*i,
    c^2+10641*a*g-1746*b*g-7833*c*g+10406*d*g+6251*e*g+6348*f*g+13675*g^2+4686*a*h-12570*b*h-3551*c*h+5744*d*h+5057*e*h-15042*f*h+1940*g*h+1815*h^2-11600*a*i-6855*b*i-11995*c*i-11405*d*i+1367*e*i-1940*f*i-1815*g*i,
    b*c-7620*a*g+4780*b*g+15748*c*g-13479*d*g+4851*e*g-9223*f*g+5645*g^2+664*a*h+15444*b*h+15100*c*h-11337*d*h-3854*e*h+11394*f*h-6791*g*h-11481*h^2+811*a*i-1621*b*i+6486*c*i+13077*d*i+14964*e*i+6791*f*i+11481*g*i,
    a*c+3199*a*g+11*b*g-2273*c*g-7708*d*g+4333*e*g+7053*f*g-775*g^2+6358*a*h+465*b*h-14404*c*h+598*d*h-7962*e*h-1658*f*h+9863*g*h+8281*h^2+1808*a*i-9891*b*i-4931*c*i+909*d*i+2433*e*i-9863*f*i-8281*g*i,
    b^2-4566*a*g-9921*b*g-15087*c*g-9059*d*g+15032*e*g-11302*f*g+9055*g^2-5849*a*h+8424*b*h-673*c*h-14709*d*h+4971*e*h+3411*f*h-7061*g*h+6925*h^2+6663*a*i+9732*b*i-323*c*i+6331*d*i-12466*e*i+7061*f*i-6925*g*i,
    a*b-14047*a*g+12005*b*g+15272*c*g+15337*d*g-5310*e*g-12038*f*g+15792*g^2+14219*a*h-12818*b*h+12647*c*h+537*d*h+13211*e*h+5073*f*h+5370*g*h-11427*h^2-2454*a*i+4019*b*i+4773*c*i-1173*d*i+11138*e*i-5370*f*i+11427*g*i,
    a^2-12691*a*g-2364*b*g-14403*c*g-13159*d*g-1655*e*g+15988*f*g-3364*g^2-9193*a*h-9003*b*h-6760*c*h+8329*d*h-9218*e*h-14200*f*h+1081*g*h-5448*h^2-8597*a*i-12084*b*i-6674*c*i-6770*d*i-14439*e*i-1081*f*i+5448*g*i,
    f*g^2-8488*g^3-425*a*g*h+14487*b*g*h-7911*c*g*h+6572*d*g*h+3261*e*g*h+12067*f*g*h-3140*g^2*h-1029*a*h^2-9923*b*h^2+7327*c*h^2-1409*d*h^2+7505*e*h^2-1257*f*h^2+4341*g*h^2+15352*h^3+7917*a*g*i-14387*b*g*i-8381*c*g*i+650*d*g*i-13730*e*g*i-14735*f*g*i+4998*g^2*i+3746*a*h*i-11582*b*h*i+9575*c*h*i-10468*d*h*i-636*e*h*i-3894*f*h*i-2*g*h*i-12558*h^2*i+6064*a*i^2-12078*b*i^2+13114*c*i^2-12235*d*i^2-5445*e*i^2-15350*f*i^2+12558*g*i^2,
    e*g^2+1471*g^3-9044*a*g*h-14390*b*g*h-12021*c*g*h-5688*d*g*h+51*e*g*h+6999*f*g*h+12999*g^2*h+5170*a*h^2+10053*b*h^2+1627*c*h^2-5581*d*h^2+11348*e*h^2+11658*f*h^2-2348*g*h^2-8060*h^3+5340*a*g*i+9511*b*g*i-9471*c*g*i+13743*d*g*i+12674*e*g*i-1529*f*g*i-15740*g^2*i+9377*a*h*i+4354*b*h*i+14717*c*h*i-11783*d*h*i+9818*e*h*i+11909*f*h*i+1206*g*h*i-7798*h^2*i+9177*a*i^2+9073*b*i^2+11294*c*i^2-943*d*i^2+6179*e*i^2+6854*f*i^2+7798*g*i^2,
    d*g^2-14883*g^3-3125*a*g*h-8000*b*g*h-15634*c*g*h-13444*d*g*h+14667*e*g*h+13136*f*g*h+7902*g^2*h+4141*a*h^2-608*b*h^2+3001*c*h^2+1789*d*h^2-4900*e*h^2+4127*f*h^2+6568*g*h^2+4621*h^3+5328*a*g*i-15345*b*g*i-11551*c*g*i-12378*d*g*i+3754*e*g*i-6222*f*g*i-487*g^2*i-5330*a*h*i+12158*b*h*i-2347*c*h*i-90*d*h*i+15965*e*h*i+939*f*h*i+8684*g*h*i+1659*h^2*i+9836*a*i^2-1731*b*i^2+2983*c*i^2+10231*d*i^2-7020*e*i^2-13305*f*i^2-1659*g*i^2,
    c*g^2-11051*g^3-10698*a*g*h+13245*b*g*h+1433*c*g*h-11436*d*g*h-14341*e*g*h-14634*f*g*h+6896*g^2*h+14949*a*h^2-7577*b*h^2-593*c*h^2-7813*d*h^2+13203*e*h^2+3608*f*h^2-5815*g*h^2-8027*h^3+4971*a*g*i+6206*b*g*i+15581*c*g*i-15159*d*g*i-11680*e*g*i-15858*f*g*i-8577*g^2*i-13077*a*h*i+3423*b*h*i+12848*c*h*i-10669*d*h*i+5133*e*h*i+3964*f*h*i-3795*g*h*i-12118*h^2*i-6975*a*i^2-7538*b*i^2+2828*c*i^2+221*d*i^2+10428*e*i^2+11822*f*i^2+12118*g*i^2,
    b*g^2+6316*g^3-3910*a*g*h-1213*b*g*h-1020*c*g*h+1114*d*g*h+6021*e*g*h-5664*f*g*h-15279*g^2*h-13626*a*h^2-4499*b*h^2+10789*c*h^2+2154*d*h^2+12933*e*h^2+7701*f*h^2-3561*g*h^2-8931*h^3-3029*a*g*i+14950*b*g*i+9153*c*g*i-11405*d*g*i+15695*e*g*i+9956*f*g*i-4732*g^2*i+5207*a*h*i-7399*b*h*i-15412*c*h*i+6850*d*h*i-10615*e*h*i-8792*f*h*i-8554*g*h*i+12208*h^2*i-13657*a*i^2-13361*b*i^2-4127*c*i^2+8237*d*i^2-14918*e*i^2-14518*f*i^2-12208*g*i^2,
    a*g^2-1596*g^3+13767*a*g*h+10194*b*g*h-11334*c*g*h-1718*d*g*h-930*e*g*h-15701*f*g*h-8042*g^2*h-6890*a*h^2-11177*b*h^2-15540*c*h^2-13859*d*h^2-3648*e*h^2-10164*f*h^2+13559*g*h^2+6169*h^3-834*a*g*i+11859*b*g*i+11519*c*g*i-375*d*g*i-4714*e*g*i-388*f*g*i-10627*g^2*i-14097*a*h*i-5464*b*h*i+5418*c*h*i-51*d*h*i+4741*e*h*i-13434*f*h*i+6739*g*h*i-9502*h^2*i+11203*a*i^2+9746*b*i^2-6293*c*i^2+13853*d*i^2+10502*e*i^2-12908*f*i^2+9502*g*i^2,
    g^4+15420*g^3*h-15333*a*g*h^2+12604*b*g*h^2-4*c*g*h^2-7239*d*g*h^2+3261*e*g*h^2-6990*f*g*h^2+10390*g^2*h^2-14575*a*h^3-5015*b*h^3+10893*c*h^3+12466*d*h^3+12496*e*h^3-8860*f*h^3+11314*g*h^3+11002*h^4-549*g^3*i-11651*a*g*h*i-6197*b*g*h*i+6323*c*g*h*i+10490*d*g*h*i-6776*e*g*h*i-11772*f*g*h*i-11769*g^2*h*i-7006*a*h^2*i-1092*b*h^2*i+10626*c*h^2*i+10760*d*h^2*i+3052*e*h^2*i-5408*f*h^2*i+7847*g*h^2*i+3870*h^3*i-3284*a*g*i^2+10095*b*g*i^2-5145*c*g*i^2-4162*d*g*i^2-218*e*g*i^2+438*f*g*i^2-8034*g^2*i^2-4353*a*h*i^2-13366*b*h*i^2+1504*c*h*i^2-11841*d*h*i^2+11083*e*h*i^2+1062*f*h*i^2+7173*g*h*i^2-2947*h^2*i^2+13670*a*i^3+9751*b*i^3-12205*c*i^3-5658*d*i^3-11877*e*i^3-11043*f*i^3+2947*g*i^3
    )

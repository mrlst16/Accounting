?
8D:\Repos\CommonCore\CommonCore\Comparers\ComparerFunc.cs
	namespace 	

CommonCore
 
. 
	Comparers 
{ 
public 

class 
ComparerFunc 
< 
T 
>  
:! "
	IComparer# ,
<, -
T- .
>. /
{ 
private 
Func 
< 
T 
, 
T 
, 
bool 
>  
_func! &
;& '
public

 
ComparerFunc

 
(

 
Func

  
<

  !
T

! "
,

" #
T

$ %
,

% &
bool

' +
>

+ ,
func

- 1
)

1 2
{ 	
_func 
= 
func 
; 
} 	
public 
int 
Compare 
( 
T 
x 
, 
T  !
y" #
)# $
{ 	
return 
_func 
( 
x 
, 
y 
) 
?  
$num! "
:# $
$num% &
;& '
} 	
public 
static 
implicit 
operator '
ComparerFunc( 4
<4 5
T5 6
>6 7
(7 8
Func8 <
<< =
T= >
,> ?
T@ A
,A B
boolC G
>G H
funcI M
)M N
=> 
new 
ComparerFunc 
<  
T  !
>! "
(" #
func# '
)' (
;( )
} 
} ?
9D:\Repos\CommonCore\CommonCore\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *?F
DD:\Repos\CommonCore\CommonCore\Repo\MongoDb\MongoDbCrudRepository.cs
	namespace		 	

CommonCore		
 
.		 
Repo		 
.		 
MongoDb		 !
{

 
public 

class !
MongoDbCrudRepository &
<& '
T' (
>( )
:* +
ICrudRepository, ;
<; <
T< =
>= >
{ 
private 
readonly 
MongoUrl !
_url" &
;& '
private 
readonly 
IMongoClient %
_client& -
;- .
private 
readonly 
IMongoDatabase '
	_database( 1
;1 2
public !
MongoDbCrudRepository $
($ %
string% +
connectionString, <
)< =
{ 	
_url 
= 
new 
MongoUrl 
(  
connectionString  0
)0 1
;1 2
_client 
= 
new 
MongoClient %
(% &
_url& *
)* +
;+ ,
	_database 
= 
_client 
.  
GetDatabase  +
(+ ,
_url, 0
.0 1
DatabaseName1 =
)= >
;> ?
} 	
private 
IMongoCollection  
<  !
T! "
>" #
GetCollection$ 1
<1 2
T2 3
>3 4
(4 5
)5 6
=> 
	_database 
. 
GetCollection &
<& '
T' (
>( )
() *
typeof* 0
(0 1
T1 2
)2 3
.3 4
Name4 8
)8 9
;9 :
public 
async 
Task 
Create  
(  !
T! "
item# '
)' (
{ 	
var 

collection 
= 
GetCollection *
<* +
T+ ,
>, -
(- .
). /
;/ 0
await 

collection 
. 
InsertOneAsync +
(+ ,
item, 0
)0 1
;1 2
} 	
public!! 
async!! 
Task!! 
Create!!  
(!!  !
IEnumerable!!! ,
<!!, -
T!!- .
>!!. /
items!!0 5
)!!5 6
{"" 	
var## 

collection## 
=## 
GetCollection## *
<##* +
T##+ ,
>##, -
(##- .
)##. /
;##/ 0
await$$ 

collection$$ 
.$$ 
InsertManyAsync$$ ,
($$, -
items$$- 2
)$$2 3
;$$3 4
}%% 	
public'' 
async'' 
Task'' 
<'' 
IEnumerable'' %
<''% &
T''& '
>''' (
>''( )
Read''* .
(''. /

Expression''/ 9
<''9 :
Func'': >
<''> ?
T''? @
,''@ A
bool''B F
>''F G
>''G H
filter''I O
)''O P
{(( 	
var)) 

collection)) 
=)) 
GetCollection)) *
<))* +
T))+ ,
>)), -
())- .
))). /
;))/ 0
var** 
cursor** 
=** 
await** 

collection** )
.**) *
	FindAsync*** 3
<**3 4
T**4 5
>**5 6
(**6 7
filter**7 =
)**= >
;**> ?
return++ 
cursor++ 
.++ 
ToEnumerable++ &
<++& '
T++' (
>++( )
(++) *
)++* +
;+++ ,
},, 	
public.. 
async.. 
Task.. 
<.. 
IEnumerable.. %
<..% &
T..& '
>..' (
>..( )
Read..* .
(... /
SearchRequest../ <
<..< =
T..= >
>..> ?
searchRequest..@ M
)..M N
{// 	
var00 

collection00 
=00 
GetCollection00 *
<00* +
T00+ ,
>00, -
(00- .
)00. /
;00/ 0
var11 
cursor11 
=11 
await11 

collection11 )
.11) *
	FindAsync11* 3
<113 4
T114 5
>115 6
(116 7
searchRequest117 D
.11D E
Filter11E K
,11K L
new11M P
FindOptions11Q \
<11\ ]
T11] ^
>11^ _
(11_ `
)11` a
{22 
Limit33 
=33 
searchRequest33 %
.33% &
Limit33& +
,33+ ,
Skip44 
=44 
searchRequest44 $
.44$ %
Skip44% )
}55 
)55 
;55 
return66 
cursor66 
.66 
ToEnumerable66 &
<66& '
T66' (
>66( )
(66) *
)66* +
;66+ ,
}77 	
public99 
async99 
Task99 
<99 
(99 
bool99 
,99  
T99! "
)99" #
>99# $
Update99% +
(99+ ,
T99, -
item99. 2
,992 3

Expression994 >
<99> ?
Func99? C
<99C D
T99D E
,99E F
bool99G K
>99K L
>99L M
filter99N T
)99T U
{:: 	
var;; 

collection;; 
=;; 
GetCollection;; *
<;;* +
T;;+ ,
>;;, -
(;;- .
);;. /
;;;/ 0
var<< 
updateResult<< 
=<< 
await<< $

collection<<% /
.<</ 0
ReplaceOneAsync<<0 ?
<<<? @
T<<@ A
><<A B
(<<B C
filter<<C I
,<<I J
item<<K O
)<<O P
;<<P Q
return== 
(== 
updateResult==  
.==  !
IsAcknowledged==! /
,==/ 0
item==1 5
)==5 6
;==6 7
}>> 	
public@@ 
async@@ 
Task@@ 
<@@ 
bool@@ 
>@@ 
Delete@@  &
(@@& '

Expression@@' 1
<@@1 2
Func@@2 6
<@@6 7
T@@7 8
,@@8 9
bool@@: >
>@@> ?
>@@? @

expression@@A K
)@@K L
{AA 	
varBB 

collectionBB 
=BB 
GetCollectionBB *
<BB* +
TBB+ ,
>BB, -
(BB- .
)BB. /
;BB/ 0
varCC 
deleteResultCC 
=CC 
awaitCC $

collectionCC% /
.CC/ 0
DeleteOneAsyncCC0 >
<CC> ?
TCC? @
>CC@ A
(CCA B

expressionCCB L
)CCL M
;CCM N
returnDD 
deleteResultDD 
.DD  
IsAcknowledgedDD  .
;DD. /
}EE 	
publicGG 
asyncGG 
TaskGG 
<GG 
boolGG 
>GG 

DeleteBulkGG  *
(GG* +

ExpressionGG+ 5
<GG5 6
FuncGG6 :
<GG: ;
TGG; <
,GG< =
boolGG> B
>GGB C
>GGC D
filterGGE K
)GGK L
{HH 	
varII 

collectionII 
=II 
GetCollectionII *
<II* +
TII+ ,
>II, -
(II- .
)II. /
;II/ 0
varJJ 
deleteResultJJ 
=JJ 
awaitJJ $

collectionJJ% /
.JJ/ 0
DeleteManyAsyncJJ0 ?
<JJ? @
TJJ@ A
>JJA B
(JJB C
filterJJC I
)JJI J
;JJJ K
returnKK 
deleteResultKK 
.KK  
IsAcknowledgedKK  .
;KK. /
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
TNN 
>NN 
FirstNN "
(NN" #

ExpressionNN# -
<NN- .
FuncNN. 2
<NN2 3
TNN3 4
,NN4 5
boolNN6 :
>NN: ;
>NN; <
filterNN= C
)NNC D
{OO 	
varPP 

collectionPP 
=PP 
GetCollectionPP *
<PP* +
TPP+ ,
>PP, -
(PP- .
)PP. /
;PP/ 0
varQQ 
cursorQQ 
=QQ 
awaitQQ 

collectionQQ )
.QQ) *
	FindAsyncQQ* 3
(QQ3 4
filterQQ4 :
)QQ: ;
;QQ; <
returnRR 
cursorRR 
.RR 
FirstOrDefaultRR (
(RR( )
)RR) *
;RR* +
}SS 	
}TT 
}UU ?
5D:\Repos\CommonCore\CommonCore\Repo\RepoExtensions.cs
	namespace 	

CommonCore
 
. 
Repo 
{ 
public 

static 
class 
RepoExtensions &
{ 
public 
static 
T 
EnsureID  
<  !
T! "
>" #
(# $
this$ (
T) *
obj+ .
). /
where		 
T		 
:		 
IEntity		 
{

 	
if 
( 
obj 
. 
ID 
== 
Guid 
. 
Empty $
)$ %
obj 
. 
ID 
= 
Guid 
. 
NewGuid %
(% &
)& '
;' (
return 
obj 
; 
} 	
} 
} ?
?D:\Repos\CommonCore\CommonCore\Repo\Requests\RunSprocRequest.cs
	namespace 	

CommonCore
 
. 
Repo 
. 
Requests "
{ 
public 

class 
RunSprocRequest  
{ 
public 
Type 
ContextType 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
	SprocName		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
IDictionary

 
<

 
string

 !
,

! "
string

# )
>

) *

Parameters

+ 5
{

6 7
get

8 ;
;

; <
set

= @
;

@ A
}

B C
} 
} ?
5D:\Repos\CommonCore\CommonCore\Responses\IResponse.cs
	namespace 	

CommonCore
 
. 
	Responses 
{ 
public 

	interface 
	IResponse 
{ 
bool 
Sucess 
{ 
get 
; 
} 
List		 
<		 
	Exception		 
>		 

Exceptions		 "
{		# $
get		% (
;		( )
}		* +
List

 
<

 
string

 
>

 
Messages

 
{

 
get

  #
;

# $
}

% &
} 
} ?W
4D:\Repos\CommonCore\CommonCore\Responses\Response.cs
	namespace 	

CommonCore
 
. 
	Responses 
{ 
public 

class 
Response 
< 
T 
> 
: 
	IResponse (
{ 
	protected 
T 
_result 
; 
public		 
T		 
Result		 
{

 	
get 
{ 
return 
_result 
; 
} 
set 
{ 
_result 
= 
value 
;  
Sucess 
= 
( 
value 
!=  "
null# '
)' (
;( )
} 
} 	
public 
	IResponse 
Inner 
{  
get! $
;$ %
	protected& /
set0 3
;3 4
}5 6
public 
bool 
Sucess 
{ 
get  
;  !
set" %
;% &
}' (
public 
List 
< 
	Exception 
> 

Exceptions )
{* +
get, /
;/ 0
	protected1 :
set; >
;> ?
}@ A
=B C
newD G
ListH L
<L M
	ExceptionM V
>V W
(W X
)X Y
;Y Z
public 
List 
< 
string 
> 
Messages $
{% &
get' *
;* +
	protected, 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
stringH N
>N O
(O P
)P Q
;Q R
public 
Response 
( 
) 
{ 	
}   	
public"" 
Response"" 
<"" 
T"" 
>"" 
WithException"" (
(""( )
	Exception"") 2
e""3 4
)""4 5
{## 	
return$$ 
this$$ 
+$$ 
e$$ 
;$$ 
}%% 	
public'' 
Response'' 
<'' 
T'' 
>'' 
WithExceptions'' )
('') *
IEnumerable''* 5
<''5 6
	Exception''6 ?
>''? @

exceptions''A K
)''K L
{(( 	
return)) 
this)) 
+)) 

exceptions)) $
;))$ %
}** 	
public,, 
Response,, 
<,, 
T,, 
>,, 

WithResult,, %
(,,% &
T,,& '
r,,( )
),,) *
{-- 	
return.. 
this.. 
+.. 
r.. 
;.. 
}// 	
public11 
Response11 
<11 
T11 
>11 
WIthInnerResult11 *
(11* +
	IResponse11+ 4
r115 6
)116 7
{22 	
return33 
this33 
+33 
r33 
;33 
}44 	
public66 
Response66 
<66 
T66 
>66 
IsUnSuccessful66 )
(66) *
)66* +
{77 	
this88 
.88 
Sucess88 
=88 
false88 
;88  
return99 
this99 
;99 
}:: 	
public<< 
Response<< 
<<< 
T<< 
><< 
IsSuccessful<< '
(<<' (
)<<( )
{== 	
this>> 
.>> 
Sucess>> 
=>> 
true>> 
;>> 
return?? 
this?? 
;?? 
}@@ 	
publicBB 
staticBB 
ResponseBB 
<BB 
TBB  
>BB  !
operatorBB" *
+BB+ ,
(BB, -
ResponseBB- 5
<BB5 6
TBB6 7
>BB7 8
responseBB9 A
,BBA B
TBBC D
resultBBE K
)BBK L
{CC 	
responseDD 
.DD 
ResultDD 
=DD 
resultDD $
;DD$ %
responseEE 
.EE 
SucessEE 
=EE 
falseEE #
;EE# $
returnFF 
responseFF 
;FF 
}GG 	
publicII 
staticII 
ResponseII 
<II 
TII  
>II  !
operatorII" *
+II+ ,
(II, -
ResponseII- 5
<II5 6
TII6 7
>II7 8
responseII9 A
,IIA B
	ExceptionIIC L
eIIM N
)IIN O
{JJ 	
responseKK 
.KK 

ExceptionsKK 
.KK  
AddKK  #
(KK# $
eKK$ %
)KK% &
;KK& '
responseLL 
.LL 
SucessLL 
=LL 
falseLL #
;LL# $
returnMM 
responseMM 
;MM 
}NN 	
publicPP 
staticPP 
ResponsePP 
<PP 
TPP  
>PP  !
operatorPP" *
+PP+ ,
(PP, -
ResponsePP- 5
<PP5 6
TPP6 7
>PP7 8
responsePP9 A
,PPA B
IEnumerablePPC N
<PPN O
	ExceptionPPO X
>PPX Y

exceptionsPPZ d
)PPd e
{QQ 	
responseRR 
.RR 

ExceptionsRR 
.RR  
AddRangeRR  (
(RR( )

exceptionsRR) 3
)RR3 4
;RR4 5
responseSS 
.SS 
SucessSS 
=SS 
falseSS #
;SS# $
returnTT 
responseTT 
;TT 
}UU 	
publicWW 
staticWW 
ResponseWW 
<WW 
TWW  
>WW  !
operatorWW" *
+WW+ ,
(WW, -
ResponseWW- 5
<WW5 6
TWW6 7
>WW7 8
responseWW9 A
,WWA B
boolWWC G
successWWH O
)WWO P
{XX 	
responseYY 
.YY 
SucessYY 
=YY 
successYY %
;YY% &
returnZZ 
responseZZ 
;ZZ 
}[[ 	
public^^ 
static^^ 
Response^^ 
<^^ 
T^^  
>^^  !
operator^^" *
+^^+ ,
(^^, -
Response^^- 5
<^^5 6
T^^6 7
>^^7 8
response^^9 A
,^^A B
string^^C I
message^^J Q
)^^Q R
{__ 	
response`` 
.`` 
Messages`` 
.`` 
Add`` !
(``! "
message``" )
)``) *
;``* +
returnaa 
responseaa 
;aa 
}bb 	
publicdd 
staticdd 
Responsedd 
<dd 
Tdd  
>dd  !
operatordd" *
+dd+ ,
(dd, -
Responsedd- 5
<dd5 6
Tdd6 7
>dd7 8
onedd9 <
,dd< =
	IResponsedd> G
twoddH K
)ddK L
{ee 	
oneff 
.ff 
Innerff 
=ff 
twoff 
;ff 
onegg 
.gg 

Exceptionsgg 
.gg 
AddRangegg #
(gg# $
twogg$ '
.gg' (

Exceptionsgg( 2
)gg2 3
;gg3 4
onehh 
.hh 
Messageshh 
.hh 
AddRangehh !
(hh! "
twohh" %
.hh% &
Messageshh& .
)hh. /
;hh/ 0
returnii 
oneii 
;ii 
}jj 	
publicll 
staticll 
implicitll 
operatorll '
Tll( )
(ll) *
Responsell* 2
<ll2 3
Tll3 4
>ll4 5
responsell6 >
)ll> ?
{mm 	
returnnn 
responsenn 
.nn 
Resultnn "
;nn" #
}oo 	
publicqq 
staticqq 
implicitqq 
operatorqq '
boolqq( ,
(qq, -
Responseqq- 5
<qq5 6
Tqq6 7
>qq7 8
responseqq9 A
)qqA B
{rr 	
returnss 
responsess 
.ss 
Sucessss "
;ss" #
}tt 	
publicvv 
staticvv 
implicitvv 
operatorvv '
Responsevv( 0
<vv0 1
Tvv1 2
>vv2 3
(vv3 4
Tvv4 5
responsevv6 >
)vv> ?
{ww 	
returnxx 
newxx 
Responsexx 
<xx  
Txx  !
>xx! "
(xx" #
)xx# $
{yy 
Resultzz 
=zz 
responsezz !
}{{ 
;{{ 
}|| 	
public~~ 
static~~ 
Response~~ 
<~~ 
T~~  
>~~  !
Wrap~~" &
(~~& '
Func~~' +
<~~+ ,
Response~~, 4
<~~4 5
T~~5 6
>~~6 7
,~~7 8
T~~9 :
>~~: ;
func~~< @
)~~@ A
{ 	
Response
?? 
<
?? 
T
?? 
>
?? 
response
??  
=
??! "
new
??# &
Response
??' /
<
??/ 0
T
??0 1
>
??1 2
(
??2 3
)
??3 4
;
??4 5
try
?? 
{
?? 
response
?? 
.
?? 
Result
?? 
=
??  !
func
??" &
(
??& '
response
??' /
)
??/ 0
;
??0 1
}
?? 
catch
?? 
(
?? 
	Exception
?? 
e
?? 
)
?? 
{
?? 
response
?? 
+=
?? 
e
?? 
;
?? 
}
?? 
return
?? 
response
?? 
;
?? 
}
?? 	
public
?? 
static
?? 
Response
?? 
<
?? 
T
??  
>
??  !
Wrap
??" &
(
??& '
Func
??' +
<
??+ ,
T
??, -
>
??- .
func
??/ 3
)
??3 4
{
?? 	
Response
?? 
<
?? 
T
?? 
>
?? 
response
??  
=
??! "
new
??# &
Response
??' /
<
??/ 0
T
??0 1
>
??1 2
(
??2 3
)
??3 4
;
??4 5
try
?? 
{
?? 
response
?? 
.
?? 
Result
?? 
=
??  !
func
??" &
(
??& '
)
??' (
;
??( )
}
?? 
catch
?? 
(
?? 
	Exception
?? 
e
?? 
)
?? 
{
?? 
response
?? 
+=
?? 
e
?? 
;
?? 
}
?? 
return
?? 
response
?? 
;
?? 
}
?? 	
}
?? 
}?? ?
:D:\Repos\CommonCore\CommonCore\Responses\SimpleResponse.cs
	namespace 	

CommonCore
 
. 
	Responses 
{ 
public 

class 
SimpleResponse 
:  !
	IResponse" +
{ 
public 
bool 
Sucess 
{ 
get  
;  !
set" %
;% &
}' (
public

 
List

 
<

 
	Exception

 
>

 

Exceptions

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
List 
< 
string 
> 
Messages $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ?
9D:\Repos\CommonCore\CommonCore\Utilities\GuidUtilities.cs
	namespace 	

CommonCore
 
. 
	Utilities 
{ 
public 

static 
class 
GuidUtilities %
{ 
public		 
static		 
string		 
Merge		 "
(		" #
Guid		# '
one		( +
,		+ ,
Guid		- 1
two		2 5
)		5 6
{

 	
return 
new 
List 
< 
Guid  
>  !
(! "
)" #
{$ %
one& )
,) *
two+ .
}/ 0
. 
OrderBy 
( 
x 
=> 
x 
.  
GetHashCode  +
(+ ,
), -
)- .
. 
Select 
( 
y 
=> 
y 
. 
ToString '
(' (
)( )
.) *
ToLowerInvariant* :
(: ;
); <
)< =
. 
	Aggregate 
( 
( 
a 
, 
b  
)  !
=>" $
$"% '
{' (
a( )
}) *
$str* +
{+ ,
b, -
}- .
". /
)/ 0
;0 1
} 	
} 
} ?
9D:\Repos\CommonCore\CommonCore\Validation\IValidatable.cs
	namespace 	

CommonCore
 
. 

Validation 
{ 
public 

	interface 
IValidatable !
{ 
bool 
Validate 
( 
) 
; 
} 
} ?
>D:\Repos\CommonCore\CommonCore\Validation\RequiredAttribute.cs
	namespace 	

CommonCore
 
. 

Validation 
{ 
public 

class 
RequiredAttribute "
:# $
	Attribute% .
{ 
} 
} ?
6D:\Repos\CommonCore\CommonCore\Validation\Validator.cs
	namespace 	

CommonCore
 
. 

Validation 
{ 
public 

class 
	Validator 
{ 
public

 
static

 
bool

 
Validate

 #
(

# $
IValidatable

$ 0
obj

1 4
)

4 5
{ 	
if 
( 
obj 
== 
null 
) 
return #
false$ )
;) *
bool 
result 
= 
true 
; 
try 
{ 
return 
! 
obj 
. 
GetType #
(# $
)$ %
. 
GetProperties "
(" #
)# $
. 
Where 
( 
x 
=> 

IsRequired  *
(* +
x+ ,
), -
)- .
. 
Any 
( 
x 
=> 
{ 
return 
x  
.  !
GetValue! )
() *
obj* -
)- .
==/ 1
null2 6
;6 7
} 
) 
; 
} 
catch 
( 
	Exception 
e 
) 
{ 
result 
= 
false 
; 
} 
return 
result 
; 
} 	
public!! 
static!! 
bool!! 

IsRequired!! %
(!!% &
PropertyInfo!!& 2
propertyInfo!!3 ?
)!!? @
{"" 	
return## 
propertyInfo## 
.$$ 
GetCustomAttributes$$ $
($$$ %
true$$% )
)$$) *
.%% 
Select%% 
(%% 
x%% 
=>%% 
x%% 
.%% 
GetType%% &
(%%& '
)%%' (
)%%( )
.&& 
Contains&& 
(&& 
typeof&&  
(&&  !
RequiredAttribute&&! 2
)&&2 3
)&&3 4
;&&4 5
}'' 	
}(( 
})) 
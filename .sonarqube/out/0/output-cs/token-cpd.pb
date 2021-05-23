Ÿ
FD:\Repos\CommonCore\CommonCore.Models\Authentication\PasswordRecord.cs
	namespace 	

CommonCore
 
. 
Models 
. 
Authentication *
{ 
public 

class 
PasswordRecord 
{ 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
byte		 
[		 
]		 
PasswordHash		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
byte

 
[

 
]

 
Salt

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
int 

Iterations 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

HashLength 
{ 
get  #
;# $
set% (
;( )
}* +
public 
List 
< 
Claim 
> 
Claims !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5
List6 :
<: ;
Claim; @
>@ A
(A B
)B C
;C D
} 
} ë
GD:\Repos\CommonCore\CommonCore.Models\Authentication\PasswordRequest.cs
	namespace 	

CommonCore
 
. 
Models 
. 
Authentication *
{ 
public 

class 
PasswordRequest  
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 È
ED:\Repos\CommonCore\CommonCore.Models\Enums\ComparisonOperatorEnum.cs
	namespace 	

CommonCore
 
. 
Models 
. 
Enums !
{ 
public 

enum "
ComparisonOperatorEnum &
{ 
LessThan 
= 
$num 
, 
LessThanOrEqualTo 
= 
$num 
, 
EqualTo 
= 
$num 
,  
GreaterThanOrEqualTo 
= 
$num  
,  !
GreaterThan		 
=		 
$num		 
,		 

NotEqualTo

 
=

 
$num

 
} 
} ¶
GD:\Repos\CommonCore\CommonCore.Models\Exceptions\ValidationException.cs
	namespace 	

CommonCore
 
. 
Models 
. 

Exceptions &
{ 
public 

class 
ValidationException $
:% &
	Exception' 0
{ 
public		 
IList		 
<		 
ErrorResponse		 "
>		" #
Errors		$ *
{		+ ,
get		- 0
;		0 1
set		2 5
;		5 6
}		7 8
public 
ValidationException "
(" #
string 
message 
) 
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ŒX
ID:\Repos\CommonCore\CommonCore.Models\Extensions\IComparableExtensions.cs
	namespace 	

CommonCore
 
. 
Models 
. 

Extensions &
{ 
public 

static 
class !
IComparableExtensions -
{ 
public 
static 
bool 

IsLessThan %
<% &
T& '
>' (
(( )
this) -
T. /
compareThis0 ;
,; <
T= >

comparedTo? I
)I J
where		 
T		 
:		 
IComparable		 !
<		! "
T		" #
>		# $
{

 	
return 
compareThis 
. 
	CompareTo (
(( )

comparedTo) 3
)3 4
<5 6
$num7 8
;8 9
} 	
public 
static 
bool 
IsLessThanOrEqualTo .
<. /
T/ 0
>0 1
(1 2
this2 6
T7 8
compareThis9 D
,D E
TF G

comparedToH R
)R S
where 
T 
: 
IComparable !
<! "
T" #
># $
{ 	
var 
result 
= 
compareThis $
.$ %
	CompareTo% .
(. /

comparedTo/ 9
)9 :
;: ;
return 
result 
<= 
$num 
; 
} 	
public 
static 
bool 
IsGreaterThan (
<( )
T) *
>* +
(+ ,
this, 0
T1 2
compareThis3 >
,> ?
T@ A

comparedToB L
)L M
where 
T 
: 
IComparable !
<! "
T" #
># $
{ 	
var 
result 
= 
compareThis $
.$ %
	CompareTo% .
(. /

comparedTo/ 9
)9 :
;: ;
return 
result 
> 
$num 
; 
} 	
public 
static 
bool "
IsGreaterThanOrEqualTo 1
<1 2
T2 3
>3 4
(4 5
this5 9
T: ;
compareThis< G
,G H
TI J

comparedToK U
)U V
where 
T 
: 
IComparable !
<! "
T" #
># $
{ 	
var 
result 
= 
compareThis $
.$ %
	CompareTo% .
(. /

comparedTo/ 9
)9 :
;: ;
return   
result   
>=   
$num   
;   
}!! 	
public## 
static## 
bool## 
	IsEqualTo## $
<##$ %
T##% &
>##& '
(##' (
this##( ,
T##- .
compareThis##/ :
,##: ;
T##< =

comparedTo##> H
)##H I
where$$ 
T$$ 
:$$ 
IComparable$$ !
<$$! "
T$$" #
>$$# $
{%% 	
var&& 
result&& 
=&& 
compareThis&& $
.&&$ %
	CompareTo&&% .
(&&. /

comparedTo&&/ 9
)&&9 :
;&&: ;
return'' 
result'' 
=='' 
$num'' 
;'' 
}(( 	
public** 
static** 
bool** 
IsNotEqualTo** '
<**' (
T**( )
>**) *
(*** +
this**+ /
T**0 1
compareThis**2 =
,**= >
T**? @

comparedTo**A K
)**K L
where++ 
T++ 
:++ 
IComparable++ !
<++! "
T++" #
>++# $
{,, 	
var-- 
result-- 
=-- 
compareThis-- $
.--$ %
	CompareTo--% .
(--. /

comparedTo--/ 9
)--9 :
;--: ;
return.. 
result.. 
!=.. 
$num.. 
;.. 
}// 	
public11 
static11 
bool11 

IsLessThan11 %
<11% &
T11& '
>11' (
(11( )
this11) -
IComparable11. 9
<119 :
T11: ;
>11; <
compareThis11= H
,11H I
T11J K

comparedTo11L V
)11V W
{22 	
return33 
compareThis33 
.33 
	CompareTo33 (
(33( )

comparedTo33) 3
)333 4
<335 6
$num337 8
;338 9
}44 	
public66 
static66 
bool66 
IsLessThanOrEqualTo66 .
<66. /
T66/ 0
>660 1
(661 2
this662 6
IComparable667 B
<66B C
T66C D
>66D E
compareThis66F Q
,66Q R
T66S T

comparedTo66U _
)66_ `
{77 	
var88 
result88 
=88 
compareThis88 $
.88$ %
	CompareTo88% .
(88. /

comparedTo88/ 9
)889 :
;88: ;
return99 
result99 
<=99 
$num99 
;99 
}:: 	
public<< 
static<< 
bool<< 
IsGreaterThan<< (
<<<( )
T<<) *
><<* +
(<<+ ,
this<<, 0
IComparable<<1 <
<<<< =
T<<= >
><<> ?
compareThis<<@ K
,<<K L
T<<M N

comparedTo<<O Y
)<<Y Z
{== 	
var>> 
result>> 
=>> 
compareThis>> $
.>>$ %
	CompareTo>>% .
(>>. /

comparedTo>>/ 9
)>>9 :
;>>: ;
return?? 
result?? 
>?? 
$num?? 
;?? 
}@@ 	
publicBB 
staticBB 
boolBB "
IsGreaterThanOrEqualToBB 1
<BB1 2
TBB2 3
>BB3 4
(BB4 5
thisBB5 9
IComparableBB: E
<BBE F
TBBF G
>BBG H
compareThisBBI T
,BBT U
TBBV W

comparedToBBX b
)BBb c
{CC 	
varDD 
resultDD 
=DD 
compareThisDD $
.DD$ %
	CompareToDD% .
(DD. /

comparedToDD/ 9
)DD9 :
;DD: ;
returnEE 
resultEE 
>=EE 
$numEE 
;EE 
}FF 	
publicHH 
staticHH 
boolHH 
	IsEqualToHH $
<HH$ %
THH% &
>HH& '
(HH' (
thisHH( ,
IComparableHH- 8
<HH8 9
THH9 :
>HH: ;
compareThisHH< G
,HHG H
THHI J

comparedToHHK U
)HHU V
{II 	
varJJ 
resultJJ 
=JJ 
compareThisJJ $
.JJ$ %
	CompareToJJ% .
(JJ. /

comparedToJJ/ 9
)JJ9 :
;JJ: ;
returnKK 
resultKK 
==KK 
$numKK 
;KK 
}LL 	
publicNN 
staticNN 
boolNN 
IsNotEqualToNN '
<NN' (
TNN( )
>NN) *
(NN* +
thisNN+ /
IComparableNN0 ;
<NN; <
TNN< =
>NN= >
compareThisNN? J
,NNJ K
TNNL M

comparedToNNN X
)NNX Y
{OO 	
varPP 
resultPP 
=PP 
compareThisPP $
.PP$ %
	CompareToPP% .
(PP. /

comparedToPP/ 9
)PP9 :
;PP: ;
returnQQ 
resultQQ 
!=QQ 
$numQQ 
;QQ 
}RR 	
publicTT 
staticTT 
boolTT 

IsLessThanTT %
(TT% &
thisTT& *
IComparableTT+ 6
compareThisTT7 B
,TTB C
IComparableTTD O

comparedToTTP Z
)TTZ [
{UU 	
returnVV 
compareThisVV 
.VV 
	CompareToVV (
(VV( )

comparedToVV) 3
)VV3 4
<VV5 6
$numVV7 8
;VV8 9
}WW 	
publicYY 
staticYY 
boolYY 
IsLessThanOrEqualToYY .
(YY. /
thisYY/ 3
IComparableYY4 ?
compareThisYY@ K
,YYK L
IComparableYYM X

comparedToYYY c
)YYc d
{ZZ 	
var[[ 
result[[ 
=[[ 
compareThis[[ $
.[[$ %
	CompareTo[[% .
([[. /

comparedTo[[/ 9
)[[9 :
;[[: ;
return\\ 
result\\ 
<=\\ 
$num\\ 
;\\ 
}]] 	
public__ 
static__ 
bool__ 
IsGreaterThan__ (
(__( )
this__) -
IComparable__. 9
compareThis__: E
,__E F
IComparable__G R

comparedTo__S ]
)__] ^
{`` 	
varaa 
resultaa 
=aa 
compareThisaa $
.aa$ %
	CompareToaa% .
(aa. /

comparedToaa/ 9
)aa9 :
;aa: ;
returnbb 
resultbb 
>bb 
$numbb 
;bb 
}cc 	
publicee 
staticee 
boolee "
IsGreaterThanOrEqualToee 1
(ee1 2
thisee2 6
IComparableee7 B
compareThiseeC N
,eeN O
IComparableeeP [

comparedToee\ f
)eef g
{ff 	
vargg 
resultgg 
=gg 
compareThisgg $
.gg$ %
	CompareTogg% .
(gg. /

comparedTogg/ 9
)gg9 :
;gg: ;
returnhh 
resulthh 
>=hh 
$numhh 
;hh 
}ii 	
publickk 
statickk 
boolkk 
	IsEqualTokk $
(kk$ %
thiskk% )
IComparablekk* 5
compareThiskk6 A
,kkA B
IComparablekkC N

comparedTokkO Y
)kkY Z
{ll 	
varmm 
resultmm 
=mm 
compareThismm $
.mm$ %
	CompareTomm% .
(mm. /

comparedTomm/ 9
)mm9 :
;mm: ;
returnnn 
resultnn 
==nn 
$numnn 
;nn 
}oo 	
publicqq 
staticqq 
boolqq 
IsNotEqualToqq '
(qq' (
thisqq( ,
IComparableqq- 8
compareThisqq9 D
,qqD E
IComparableqqF Q

comparedToqqR \
)qq\ ]
{rr 	
varss 
resultss 
=ss 
compareThisss $
.ss$ %
	CompareToss% .
(ss. /

comparedToss/ 9
)ss9 :
;ss: ;
returntt 
resulttt 
!=tt 
$numtt 
;tt 
}uu 	
}vv 
}ww  	
:D:\Repos\CommonCore\CommonCore.Models\Geography\Address.cs
	namespace 	

CommonCore
 
. 
Models 
. 
	Geography %
{ 
public 

class 
Address 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Street1 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Street2 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
StateOrProvince		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
ZipCode

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} à
AD:\Repos\CommonCore\CommonCore.Models\Repo\Entities\EntityBase.cs
	namespace 	

CommonCore
 
. 
Repo 
. 
Entities "
{ 
public 

abstract 
class 

EntityBase $
:% &
IEntity' .
{ 
public 
Guid 
ID 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 
? 

CreateDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
UtcNow= C
;C D
public		 
DateTime		 
?		 
LastUpdated		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		3 4
DateTime		5 =
.		= >
UtcNow		> D
;		D E
}

 
} ´
>D:\Repos\CommonCore\CommonCore.Models\Repo\Entities\IEntity.cs
	namespace 	

CommonCore
 
. 
Repo 
. 
Entities "
{ 
public 

	interface 
IEntity 
{ 
Guid 
ID 
{ 
get 
; 
set 
; 
} 
} 
}		 ¡
<D:\Repos\CommonCore\CommonCore.Models\Repo\RepoExtensions.cs
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
} ∫
;D:\Repos\CommonCore\CommonCore.Models\Repo\SearchRequest.cs
	namespace 	

CommonCore
 
. 
Models 
. 
Repo  
{ 
public 

class 
SearchRequest 
< 
T  
>  !
{ 
public 
int 
? 
Limit 
{ 
get 
;  
set! $
;$ %
}& '
public		 
int		 
?		 
Skip		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 

Expression

 
<

 
Func

 
<

 
T

  
,

  !
bool

" &
>

& '
>

' (
Filter

) /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
} 
} ﬂ
>D:\Repos\CommonCore\CommonCore.Models\Responses\ApiResponse.cs
	namespace 	

CommonCore
 
. 
Models 
. 
	Responses %
{ 
public 

class 
ApiResponse 
< 
T 
> 
:  !
	IResponse" +
<+ ,
T, -
>- .
{ 
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
public		 
bool		 
Sucess		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
	ErrorCode

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
ErrorResponse "
>" #
Errors$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
FailureMessage $
{% &
	protected' 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
SuccessMessage $
{% &
	protected' 0
get1 4
;4 5
set6 9
;9 :
}; <
private 
string 
_message 
=  !
null" &
;& '
public 
string 
Message 
{ 	
get 
{ 
if 
( 
_message 
!= 
null  $
)$ %
return 
_message #
;# $
return 
Sucess 
? 
SuccessMessage  .
:/ 0
FailureMessage1 ?
;? @
} 
} 	
} 
} à
@D:\Repos\CommonCore\CommonCore.Models\Responses\ErrorResponse.cs
	namespace 	

CommonCore
 
. 
Models 
. 
	Responses %
{ 
public 

class 
ErrorResponse 
{ 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	ErrorCode 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

StackTrace  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 ‚
<D:\Repos\CommonCore\CommonCore.Models\Responses\IResponse.cs
	namespace 	

CommonCore
 
. 
Models 
. 
	Responses %
{ 
public 

	interface 
	IResponse 
< 
T  
>  !
:" #
	IResponse$ -
{ 
T 	
Data
 
{ 
get 
; 
} 
} 
public

 

	interface

 
	IResponse

 
{ 
bool 
Sucess 
{ 
get 
; 
} 
IList 
< 
ErrorResponse 
> 
Errors #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ÙE
AD:\Repos\CommonCore\CommonCore.Models\Responses\MethodResponse.cs
	namespace 	

CommonCore
 
. 
Models 
. 
	Responses %
{ 
public 

class 
MethodResponse 
<  
T  !
>! "
:# $
MethodResponse% 3
,3 4
	IResponse5 >
<> ?
T? @
>@ A
{ 
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
public

 
static

 
implicit

 
operator

 '
bool

( ,
(

, -
MethodResponse

- ;
<

; <
T

< =
>

= >
response

? G
)

G H
=>

I K
response

L T
.

T U
Sucess

U [
;

[ \
public 
static 
implicit 
operator '
T( )
() *
MethodResponse* 8
<8 9
T9 :
>: ;
response< D
)D E
=>F H
responseI Q
.Q R
DataR V
;V W
public 
new 
MethodResponse !
<! "
T" #
># $
AddError% -
(- .
string. 4
errorMessage5 A
)A B
{ 	
Errors 
. 
Add 
( 
new 
ErrorResponse (
(( )
)) *
{ 
Message 
= 
errorMessage &
} 
) 
; 
return 
this 
; 
} 	
public 
new 
MethodResponse !
<! "
T" #
># $
AddError% -
(- .
string. 4
errorMessage5 A
,A B
stringC I
	errorCodeJ S
)S T
{ 	
Errors 
. 
Add 
( 
new 
ErrorResponse (
(( )
)) *
{ 
Message 
= 
errorMessage &
,& '
	ErrorCode 
= 
	errorCode %
} 
) 
; 
return 
this 
; 
} 	
public   
new   
MethodResponse   !
<  ! "
T  " #
>  # $
AddError  % -
(  - .
string  . 4
errorMessage  5 A
,  A B
string  C I
	errorCode  J S
,  S T
string  U [

stackTrace  \ f
)  f g
{!! 	
Errors"" 
."" 
Add"" 
("" 
new"" 
ErrorResponse"" (
(""( )
)"") *
{## 
Message$$ 
=$$ 
errorMessage$$ &
,$$& '
	ErrorCode%% 
=%% 
	errorCode%% %
,%%% &

StackTrace&& 
=&& 

stackTrace&& '
}'' 
)'' 
;'' 
return(( 
this(( 
;(( 
})) 	
public++ 
new++ 
MethodResponse++ !
<++! "
T++" #
>++# $
AddError++% -
(++- .
	Exception++. 7
e++8 9
,++9 :
string++; A
	errorCode++B K
)++K L
{,, 	
Errors-- 
.-- 
Add-- 
(-- 
new-- 
ErrorResponse-- (
(--( )
)--) *
{.. 
Message// 
=// 
e// 
.// 
Message// #
,//# $
	ErrorCode00 
=00 
	errorCode00 %
,00% &

StackTrace11 
=11 
e11 
.11 

StackTrace11 )
}22 
)22 
;22 
return33 
this33 
;33 
}44 	
public66 
new66 
MethodResponse66 !
<66! "
T66" #
>66# $
AsSucces66% -
(66- .
)66. /
{77 	
this88 
.88 
Sucess88 
=88 
true88 
;88 
return99 
this99 
;99 
}:: 	
public<< 
new<< 
MethodResponse<< !
<<<! "
T<<" #
><<# $
	AsFailure<<% .
(<<. /
)<</ 0
{== 	
this>> 
.>> 
Sucess>> 
=>> 
false>> 
;>>  
return?? 
this?? 
;?? 
}@@ 	
}AA 
publicCC 

classCC 
MethodResponseCC 
:CC  !
	IResponseCC" +
{DD 
publicFF 
boolFF 
SucessFF 
{FF 
getFF  
;FF  !
setFF" %
;FF% &
}FF' (
publicGG 
IListGG 
<GG 
ErrorResponseGG "
>GG" #
ErrorsGG$ *
{GG+ ,
getGG- 0
;GG0 1
setGG2 5
;GG5 6
}GG7 8
=GG9 :
newGG; >
ListGG? C
<GGC D
ErrorResponseGGD Q
>GGQ R
(GGR S
)GGS T
;GGT U
publicII 
staticII 
implicitII 
operatorII '
boolII( ,
(II, -
MethodResponseII- ;
responseII< D
)IID E
=>IIF H
responseIII Q
.IIQ R
SucessIIR X
;IIX Y
publicKK 
MethodResponseKK 
AddErrorKK &
(KK& '
stringKK' -
errorMessageKK. :
)KK: ;
{LL 	
ErrorsMM 
.MM 
AddMM 
(MM 
newMM 
ErrorResponseMM (
(MM( )
)MM) *
{NN 
MessageOO 
=OO 
errorMessageOO &
}PP 
)PP 
;PP 
returnQQ 
thisQQ 
;QQ 
}RR 	
publicTT 
MethodResponseTT 
AddErrorTT &
(TT& '
stringTT' -
errorMessageTT. :
,TT: ;
stringTT< B
	errorCodeTTC L
)TTL M
{UU 	
ErrorsVV 
.VV 
AddVV 
(VV 
newVV 
ErrorResponseVV (
(VV( )
)VV) *
{WW 
MessageXX 
=XX 
errorMessageXX &
,XX& '
	ErrorCodeYY 
=YY 
	errorCodeYY %
}ZZ 
)ZZ 
;ZZ 
return[[ 
this[[ 
;[[ 
}\\ 	
public^^ 
MethodResponse^^ 
AddError^^ &
(^^& '
string^^' -
errorMessage^^. :
,^^: ;
string^^< B
	errorCode^^C L
,^^L M
string^^N T

stackTrace^^U _
)^^_ `
{__ 	
Errors`` 
.`` 
Add`` 
(`` 
new`` 
ErrorResponse`` (
(``( )
)``) *
{aa 
Messagebb 
=bb 
errorMessagebb &
,bb& '
	ErrorCodecc 
=cc 
	errorCodecc %
,cc% &

StackTracedd 
=dd 

stackTracedd '
}ee 
)ee 
;ee 
returnff 
thisff 
;ff 
}gg 	
publicii 
MethodResponseii 
AddErrorii &
(ii& '
	Exceptionii' 0
eii1 2
,ii2 3
stringii4 :
	errorCodeii; D
)iiD E
{jj 	
Errorskk 
.kk 
Addkk 
(kk 
newkk 
ErrorResponsekk (
(kk( )
)kk) *
{ll 
Messagemm 
=mm 
emm 
.mm 
Messagemm #
,mm# $
	ErrorCodenn 
=nn 
	errorCodenn %
,nn% &

StackTraceoo 
=oo 
eoo 
.oo 

StackTraceoo )
}pp 
)pp 
;pp 
returnqq 
thisqq 
;qq 
}rr 	
publictt 
MethodResponsett 
AsSuccestt &
(tt& '
)tt' (
{uu 	
thisvv 
.vv 
Sucessvv 
=vv 
truevv 
;vv 
returnww 
thisww 
;ww 
}xx 	
publiczz 
MethodResponsezz 
	AsFailurezz '
(zz' (
)zz( )
{{{ 	
this|| 
.|| 
Sucess|| 
=|| 
false|| 
;||  
return}} 
this}} 
;}} 
}~~ 	
} 
}ÄÄ 
Ã
YC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Accounts\AccountsManagementLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
Accounts !
{ 
public 

class $
AccountsManagementLoader )
:* +%
IAccountsManagementLoader, E
{		 
private

 
readonly

 "
ICrudRepositoryFactory

 /"
_crudRepositoryFactory

0 F
;

F G
public $
AccountsManagementLoader '
(' ("
ICrudRepositoryFactory "!
crudRepositoryFactory# 8
) 
{ 	"
_crudRepositoryFactory "
=# $!
crudRepositoryFactory% :
;: ;
} 	
public 
async 
Task 
	PostAsset #
(# $
Asset$ )
asset* /
)/ 0
=> 
await "
_crudRepositoryFactory *
.* +
Get+ .
<. /
Asset/ 4
>4 5
(5 6
)6 7
. 
Create 
( 
asset 
) 
; 
public 
async 
Task 

PostEquity $
($ %
Equity% +
equity, 2
)2 3
=> 
await "
_crudRepositoryFactory +
.+ ,
Get, /
</ 0
Equity0 6
>6 7
(7 8
)8 9
. 
Create 
( 
equity 
) 
;  
public 
async 
Task 
PostLiability '
(' (
	Liability( 1
	liability2 ;
); <
=> 
await "
_crudRepositoryFactory +
.+ ,
Get, /
</ 0
	Liability0 9
>9 :
(: ;
); <
. 
Create 
( 
	liability !
)! "
;" #
} 
} ©
ZC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Accounts\AccountsManagementService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
Accounts !
{ 
public 

class %
AccountsManagementService *
:+ ,&
IAccountsManagementService- G
{ 
private		 
readonly		 %
IAccountsManagementLoader		 2
_loader		3 :
;		: ;
public %
AccountsManagementService (
(( )%
IAccountsManagementLoader %
loader& ,
) 
{ 	
_loader 
= 
loader 
; 
} 	
public 
async 
Task 
	PostAsset #
(# $
Asset$ )
asset* /
)/ 0
=> 
await 
_loader 
. 
	PostAsset &
(& '
asset' ,
), -
;- .
public 
async 
Task 

PostEquity $
($ %
Equity% +
equity, 2
)2 3
=> 
await 
_loader 
. 

PostEquity '
(' (
equity( .
). /
;/ 0
public 
async 
Task 
PostLiability '
(' (
	Liability( 1
	liability2 ;
); <
=> 
await 
_loader 
. 
PostLiability *
(* +
	liability+ 4
)4 5
;5 6
} 
} Ö
YC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Companies\CompanyManagementLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Companies "
{ 
public		 

class		 #
CompanyManagementLoader		 (
:		) *$
ICompanyManagementLoader		+ C
{

 
public 
readonly "
ICrudRepositoryFactory .
_repo/ 4
;4 5
public 
async 
Task 
< 
bool 
> 
Delete  &
(& '
Guid' +
id, .
). /
=>	 
await 
_repo 
. 
Get 
< 
Company #
># $
($ %
)% &
. 
Delete 
( 
x 
=> 
x 
. 
ID !
==" $
id% '
)' (
;( )
public 
Task 
< 
( 
bool 
, 
Company "
)" #
># $
Update% +
(+ ,
Company, 3
company4 ;
); <
=> 
_repo 
. 
Get 
< 
Company 
> 
( 
) 
. 
Update 
( 
company 
,  
x! "
=># %
x& '
.' (
ID( *
==+ -
company. 5
.5 6
ID6 8
)8 9
;9 :
public 
async 
Task 
< 
( 
bool 
,  
Company! (
)( )
>) *
Create+ 1
(1 2
Company2 9
company: A
)A B
{ 	
try 
{ 
var 
repo 
= 
_repo  
.  !
Get! $
<$ %
Company% ,
>, -
(- .
). /
;/ 0
await 
repo 
. 
Create !
(! "
company" )
)) *
;* +
return 
( 
true 
, 
company %
)% &
;& '
} 
catch 
{ 
return   
(   
false   
,   
null   #
)  # $
;  $ %
}!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
Company$$ !
>$$! "
Get$$# &
($$& '
Guid$$' +
id$$, .
)$$. /
=>%% 
await%% 
_repo%% 
.%% 
Get%% 
<%% 
Company%% &
>%%& '
(%%' (
)%%( )
.&& 
First&& 
(&& 
x&& 
=>&& 
x&& 
.&& 
ID&&  
==&&! #
id&&$ &
)&&& '
;&&' (
}'' 
}(( Â
ZC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Companies\CompanyManagementService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Companies "
{ 
public 

class $
CompanyManagementService )
:* +%
ICompanyManagementService, E
{		 
private

 
readonly

 $
ICompanyManagementLoader

 1
_loader

2 9
;

9 :
public $
CompanyManagementService '
(' ($
ICompanyManagementLoader $
loader% +
) 
{ 	
_loader 
= 
loader 
; 
} 	
public 
async 
Task 
< 
( 
bool 
,  
Company! (
)( )
>) *
Create+ 1
(1 2
Company2 9
company: A
)A B
=> 
await 
_loader 
. 
Create #
(# $
company$ +
)+ ,
;, -
public 
async 
Task 
< 
bool 
> 
Delete  &
(& '
Guid' +
id, .
). /
=> 
await 
_loader 
. 
Delete #
(# $
id$ &
)& '
;' (
public 
async 
Task 
< 
Company !
>! "
Get# &
(& '
Guid' +
id, .
). /
=> 
await 
_loader 
. 
Get  
(  !
id! #
)# $
;$ %
public 
async 
Task 
< 
( 
bool 
,  
Company! (
)( )
>) *
Update+ 1
(1 2
Company2 9
company: A
)A B
=> 
await 
_loader 
. 
Update #
(# $
company$ +
)+ ,
;, -
} 
} ó
dC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Reporting\FundamentalFinancialReportsService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Reporting "
{ 
public		 

class		 .
"FundamentalFinancialReportsService		 3
:		4 5/
#IFundamentalFinancialReportsService		6 Y
{

 
private 
readonly 
IReportsLoader '
_reportsLoader( 6
;6 7
public .
"FundamentalFinancialReportsService 1
(1 2
IReportsLoader 
reportsLoader (
) 
{ 	
_reportsLoader 
= 
reportsLoader *
;* +
} 	
public 
async 
Task 
< 
TrialBalance &
>& '
GetTrailBalance( 7
(7 8
GetReportRequest8 H
requestI P
)P Q
{ 	
var 
result 
= 
new 
TrialBalance )
() *
)* +
;+ ,
var 
( 
assets 
, 
liabilities $
,$ %
equities& .
). /
=0 1
await2 7
_reportsLoader8 F
.F G
GetAccountsG R
(R S
requestS Z
)Z [
;[ \
result 
. 
Assets 
= 
assets "
;" #
result 
. 
Liabilities 
=  
liabilities! ,
;, -
result 
. 
Equities 
= 
equities &
;& '
result 
. 
AssetsBalance  
=! "
result# )
.) *
Assets* 0
.0 1
Sum1 4
(4 5
x5 6
=>7 9
x: ;
.; <
Balance< C
)C D
;D E
result 
. 
LiabilitiesBalance %
=& '
result( .
.. /
Liabilities/ :
.: ;
Sum; >
(> ?
x? @
=>A C
xD E
.E F
BalanceF M
)M N
;N O
result 
. 
EquitiesBalance "
=# $
result% +
.+ ,
Equities, 4
.4 5
Sum5 8
(8 9
x9 :
=>; =
x> ?
.? @
Balance@ G
)G H
;H I
result!! 
.!! 

IsBalanced!! 
=!! 
result!!  &
.!!& '
AssetsBalance!!' 4
-!!5 6
result!!7 =
.!!= >
LiabilitiesBalance!!> P
==!!Q S
result!!T Z
.!!Z [
EquitiesBalance!![ j
;!!j k
return"" 
result"" 
;"" 
}## 	
}$$ 
}%% ˘W
OC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Reporting\ReportsLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Reporting "
{ 
public 

class 
ReportsLoader 
:  
IReportsLoader! /
{ 
private 
readonly "
ICrudRepositoryFactory /"
_crudRepositoryFactory0 F
;F G
public 
ReportsLoader 
( "
ICrudRepositoryFactory "!
crudRepositoryFactory# 8
) 
{ 	"
_crudRepositoryFactory "
=# $!
crudRepositoryFactory% :
;: ;
} 	
public 
async 
Task 
< 
( 
IEnumerable &
<& '
Asset' ,
>, -
,- .
IEnumerable/ :
<: ;
	Liability; D
>D E
,E F
IEnumerableG R
<R S
EquityS Y
>Y Z
)Z [
>[ \
GetAccounts] h
(h i
GetReportRequesti y
request	z Å
)
Å Ç
{ 	
var 
creditsRepository !
=" #"
_crudRepositoryFactory$ :
.: ;
Get; >
<> ?
Credit? E
>E F
(F G
)G H
;H I
var 
debitsRepository  
=! ""
_crudRepositoryFactory# 9
.9 :
Get: =
<= >
Debit> C
>C D
(D E
)E F
;F G
var 
getAssetsTask 
= +
GetAccountsWithDebitsAndCredits  ?
<? @
Asset@ E
>E F
(F G
requestG N
,N O
creditsRepositoryP a
,a b
debitsRepositoryc s
)s t
;t u
var 
getLiabilitiesTask "
=# $+
GetAccountsWithDebitsAndCredits% D
<D E
	LiabilityE N
>N O
(O P
requestP W
,W X
creditsRepositoryY j
,j k
debitsRepositoryl |
)| }
;} ~
var 
getEquitiesTask 
=  !+
GetAccountsWithDebitsAndCredits" A
<A B
EquityB H
>H I
(I J
requestJ Q
,Q R
creditsRepositoryS d
,d e
debitsRepositoryf v
)v w
;w x
return   
(   
getAssetsTask   !
.  ! "
Result  " (
,  ( )
getLiabilitiesTask  * <
.  < =
Result  = C
,  C D
getEquitiesTask  E T
.  T U
Result  U [
)  [ \
;  \ ]
}!! 	
public## 
async## 
Task## 
<## 
IEnumerable## %
<##% &
Asset##& +
>##+ ,
>##, -
	GetAssets##. 7
(##7 8
GetReportRequest##8 H
request##I P
)##P Q
{$$ 	
IEnumerable%% 
<%% 
Asset%% 
>%% 
result%% %
=%%& '
await%%( -"
_crudRepositoryFactory%%. D
.&& 
Get&& 
<&& 
Asset&& 
>&& 
(&& 
)&& 
.'' 
Read'' 
('' 
x'' 
=>'' 
x'' 
.'' 
	CompanyID'' &
==''' )
x''* +
.''+ ,
ID'', .
)''. /
;''/ 0
var(( 
creditsRepository(( !
=((" #"
_crudRepositoryFactory(($ :
.((: ;
Get((; >
<((> ?
Credit((? E
>((E F
(((F G
)((G H
;((H I
var)) 
debitsRepository))  
=))! ""
_crudRepositoryFactory))# 9
.))9 :
Get)): =
<))= >
Debit))> C
>))C D
())D E
)))E F
;))F G
return** 
await** +
GetAccountsWithDebitsAndCredits** 8
<**8 9
Asset**9 >
>**> ?
(**? @
request**@ G
,**G H
creditsRepository**I Z
,**Z [
debitsRepository**\ l
)**l m
;**m n
}++ 	
public-- 
async-- 
Task-- 
<-- 
IEnumerable-- %
<--% &
	Liability--& /
>--/ 0
>--0 1
GetLiabilities--2 @
(--@ A
GetReportRequest--A Q
request--R Y
)--Y Z
{.. 	
IEnumerable// 
<// 
	Liability// !
>//! "
result//# )
=//* +
await//, 1"
_crudRepositoryFactory//2 H
.00 
Get00 
<00 
	Liability00 
>00 
(00  
)00  !
.11 
Read11 
(11 
x11 
=>11 
x11 
.11 
	CompanyID11 &
==11' )
x11* +
.11+ ,
ID11, .
)11. /
;11/ 0
var33 
creditsRepository33 !
=33" #"
_crudRepositoryFactory33$ :
.33: ;
Get33; >
<33> ?
Credit33? E
>33E F
(33F G
)33G H
;33H I
var44 
debitsRepository44  
=44! ""
_crudRepositoryFactory44# 9
.449 :
Get44: =
<44= >
Debit44> C
>44C D
(44D E
)44E F
;44F G
return55 
await55 +
GetAccountsWithDebitsAndCredits55 8
<558 9
	Liability559 B
>55B C
(55C D
request55D K
,55K L
creditsRepository55M ^
,55^ _
debitsRepository55` p
)55p q
;55q r
}66 	
public88 
async88 
Task88 
<88 
IEnumerable88 %
<88% &
Equity88& ,
>88, -
>88- .
GetEquities88/ :
(88: ;
GetReportRequest88; K
request88L S
)88S T
{99 	
IEnumerable:: 
<:: 
Equity:: 
>:: 
result::  &
=::' (
await::) ."
_crudRepositoryFactory::/ E
.;; 
Get;; 
<;; 
Equity;; 
>;; 
(;; 
);; 
.<< 
Read<< 
(<< 
x<< 
=><< 
x<< 
.<< 
	CompanyID<< &
==<<' )
x<<* +
.<<+ ,
ID<<, .
)<<. /
;<</ 0
var>> 
creditsRepository>> !
=>>" #"
_crudRepositoryFactory>>$ :
.>>: ;
Get>>; >
<>>> ?
Credit>>? E
>>>E F
(>>F G
)>>G H
;>>H I
var?? 
debitsRepository??  
=??! ""
_crudRepositoryFactory??# 9
.??9 :
Get??: =
<??= >
Debit??> C
>??C D
(??D E
)??E F
;??F G
return@@ 
await@@ +
GetAccountsWithDebitsAndCredits@@ 8
<@@8 9
Equity@@9 ?
>@@? @
(@@@ A
request@@A H
,@@H I
creditsRepository@@J [
,@@[ \
debitsRepository@@] m
)@@m n
;@@n o
}AA 	
privateCC 
asyncCC 
TaskCC 
<CC 
IEnumerableCC &
<CC& '
TCC' (
>CC( )
>CC) *+
GetAccountsWithDebitsAndCreditsCC+ J
<CCJ K
TCCK L
>CCL M
(CCM N
GetReportRequestDD 
requestDD $
,DD$ %
ICrudRepositoryEE 
<EE 
CreditEE "
>EE" #
creditsRepositoryEE$ 5
,EE5 6
ICrudRepositoryFF 
<FF 
DebitFF !
>FF! "
debitsReporsitoryFF# 4
)FF4 5
whereGG 
TGG 
:GG 
AccountBaseGG !
{HH 	
IEnumerableII 
<II 
TII 
>II 
resultII !
=II" #
awaitII$ )"
_crudRepositoryFactoryII* @
.JJ 
GetJJ 
<JJ 
TJJ 
>JJ 
(JJ 
)JJ 
.KK 
ReadKK 
(KK 
xKK 
=>KK 
xKK 
.KK 
	CompanyIDKK &
==KK' )
xKK* +
.KK+ ,
IDKK, .
)KK. /
;KK/ 0
varLL 
accountNumbersLL 
=LL  
resultLL! '
.LL' (
SelectLL( .
(LL. /
xLL/ 0
=>LL1 3
xLL4 5
.LL5 6
IDLL6 8
)LL8 9
;LL9 :
ParallelNN 
.NN 
ForEachNN 
(NN 
resultNN #
,NN# $
asyncNN% *
(NN+ ,
xNN, -
)NN- .
=>NN/ 1
{OO 
xPP 
.PP 
CreditsPP 
=PP 
awaitPP !
creditsRepositoryPP" 3
.PP3 4
ReadPP4 8
(PP8 9
yPP9 :
=>PP; =
PullTransactionPP> M
<PPM N
CreditPPN T
>PPT U
(PPU V
yPPV W
,PPW X
accountNumbersPPY g
,PPg h
requestPPi p
.PPp q
	StartDatePPq z
,PPz {
request	PP| É
.
PPÉ Ñ
EndDate
PPÑ ã
)
PPã å
)
PPå ç
;
PPç é
xQQ 
.QQ 
DebitsQQ 
=QQ 
awaitQQ  
debitsReporsitoryQQ! 2
.QQ2 3
ReadQQ3 7
(QQ7 8
yQQ8 9
=>QQ: <
PullTransactionQQ= L
<QQL M
DebitQQM R
>QQR S
(QQS T
yQQT U
,QQU V
accountNumbersQQW e
,QQe f
requestQQg n
.QQn o
	StartDateQQo x
,QQx y
request	QQz Å
.
QQÅ Ç
EndDate
QQÇ â
)
QQâ ä
)
QQä ã
;
QQã å
}RR 
)RR 
;RR 
returnSS 
resultSS 
;SS 
}TT 	
privateVV 
boolVV 
PullTransactionVV $
<VV$ %
TVV% &
>VV& '
(VV' (
TVV( )
tVV* +
,VV+ ,
IEnumerableVV- 8
<VV8 9
GuidVV9 =
>VV= >

accountIdsVV? I
,VVI J
DateTimeVVK S
startVVT Y
,VVY Z
DateTimeVV[ c
endVVd g
)VVg h
whereWW 
TWW 
:WW 
TransactionBaseWW %
=>XX 

accountIdsXX 
.XX 
ContainsXX "
(XX" #
tXX# $
.XX$ %
	AccountIDXX% .
)XX. /
&&YY 
tYY 
.YY 

CreateDateYY 
>=YY  "
startYY# (
&&YY) +
tYY, -
.YY- .

CreateDateYY. 8
<=YY9 ;
endYY< ?
;YY? @
}ZZ 
}[[ “
VC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Transactions\TransactionLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
Transactions %
{ 
public		 

class		 
TransactionLoader		 "
:		# $
ITransactionLoader		% 7
{

 
private 
readonly "
ICrudRepositoryFactory /"
_crudRepositoryFactory0 F
;F G
public 
TransactionLoader  
(  !"
ICrudRepositoryFactory "!
crudRepositoryFactory# 8
) 
{ 	"
_crudRepositoryFactory "
=# $!
crudRepositoryFactory% :
;: ;
} 	
public 
async 
Task 
RecordCredit &
(& '
Credit' -
credit. 4
)4 5
=> 
await "
_crudRepositoryFactory +
.+ ,
Get, /
</ 0
Credit0 6
>6 7
(7 8
)8 9
. 
Create 
( 
credit 
) 
;  
public 
async 
Task 
RecordCredits '
(' (
IEnumerable( 3
<3 4
Credit4 :
>: ;
credits< C
)C D
=> 
await "
_crudRepositoryFactory +
. 
Get 
< 
Credit 
> 
( 
) 
. 
Create 
( 
credits 
)  
;  !
public 
async 
Task 
RecordDebit %
(% &
Debit& +
debit, 1
)1 2
=> 
await "
_crudRepositoryFactory +
. 
Get 
< 
Debit 
> 
( 
) 
.   
Create   
(   
debit   
)   
;   
public"" 
async"" 
Task"" 
RecordDebits"" &
(""& '
IEnumerable""' 2
<""2 3
Debit""3 8
>""8 9
debits"": @
)""@ A
=>## 
await## "
_crudRepositoryFactory## +
.$$ 
Get$$ 
<$$ 
Debit$$ 
>$$ 
($$ 
)$$ 
.%% 
Create%% 
(%% 
debits%% 
)%% 
;%%  
}&& 
}'' ê1
WC:\Users\matt\Source\Repos\Accounting\Accounting.BLL\Transactions\TransactionService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
Transactions %
{ 
public 

class 
TransactionService #
:$ %
ITransactionService& 9
{ 
private 
readonly 
ITransactionLoader +
_loader, 3
;3 4
private 
readonly 
IMapper  
<  ! 
TransactionCsvRecord! 5
,5 6
TransactionBase7 F
>F G!
_csvTransactionMapperH ]
;] ^
public 
TransactionService !
(! "
ITransactionLoader 
loader %
,% &
IMapper 
<  
TransactionCsvRecord (
,( )
TransactionBase* 9
>9 : 
csvTransactionMapper; O
) 
{ 	
_loader 
= 
loader 
; !
_csvTransactionMapper !
=" # 
csvTransactionMapper$ 8
;8 9
} 	
public 
async 
Task 
RecordCredit &
(& '
Credit' -
credit. 4
)4 5
=> 
await 
_loader 
. 
RecordCredit )
() *
credit* 0
)0 1
;1 2
public 
async 
Task 
RecordDebit %
(% &
Debit& +
debit, 1
)1 2
=>   
await   
_loader   
.   
RecordDebit   (
(  ( )
debit  ) .
)  . /
;  / 0
public"" 
async"" 
Task"" !
RecordTransactionsCsv"" /
(""/ 0
string""0 6
csv""7 :
)"": ;
{## 	
var$$ 
config$$ 
=$$ 
new$$ 
CsvConfiguration$$ -
($$- .
CultureInfo$$. 9
.$$9 :
InvariantCulture$$: J
)$$J K
{%% 
HasHeaderRecord&& 
=&&  !
true&&" &
}'' 
;'' 
using(( 
((( 
var(( 

textReader(( !
=((" #
new(($ '
StringReader((( 4
(((4 5
csv((5 8
)((8 9
)((9 :
using)) 
()) 
	CsvReader)) 
	csvReader)) &
=))' (
new))) ,
	CsvReader))- 6
())6 7

textReader))7 A
,))A B
config))C I
)))I J
)))J K
{** 
	csvReader++ 
.++ 
Context++ !
.++! "
RegisterClassMap++" 2
<++2 3
TransactionClassMap++3 F
>++F G
(++G H
)++H I
;++I J
var,, 
records,, 
=,, 
	csvReader,, '
.,,' (

GetRecords,,( 2
<,,2 3 
TransactionCsvRecord,,3 G
>,,G H
(,,H I
),,I J
;,,J K
var-- 
debits-- 
=-- 
new--  
List--! %
<--% &
Debit--& +
>--+ ,
(--, -
)--- .
;--. /
var.. 
credits.. 
=.. 
new.. !
List.." &
<..& '
Credit..' -
>..- .
(... /
)../ 0
;..0 1
Parallel00 
.00 
For00 
(00 
$num00 
,00 
records00  '
.00' (
Count00( -
(00- .
)00. /
,00/ 0
async001 6
(007 8
i008 9
)009 :
=>00; =
{11 
var22 
transaction22 #
=22$ %
await22& +!
_csvTransactionMapper22, A
.22A B
Map22B E
(22E F
records22F M
.22M N
	ElementAt22N W
(22W X
i22X Y
)22Y Z
)22Z [
;22[ \
switch33 
(33 
transaction33 '
)33' (
{44 
case55 
Debit55 "
d55# $
:55$ %
debits66 "
.66" #
Add66# &
(66& '
d66' (
)66( )
;66) *
break77 !
;77! "
case88 
Credit88 #
c88$ %
:88% &
credits99 #
.99# $
Add99$ '
(99' (
c99( )
)99) *
;99* +
break:: !
;::! "
};; 
}<< 
)<< 
;<< 
await>> 
_loader>> 
.>> 
RecordDebits>> *
(>>* +
debits>>+ 1
)>>1 2
;>>2 3
await?? 
_loader?? 
.?? 
RecordCredits?? +
(??+ ,
credits??, 3
)??3 4
;??4 5
}@@ 
}AA 	
}BB 
publicDD 

classDD 
TransactionClassMapDD $
:DD% &
ClassMapDD' /
<DD/ 0 
TransactionCsvRecordDD0 D
>DDD E
{EE 
publicFF 
TransactionClassMapFF "
(FF" #
)FF# $
{GG 	
MapHH 
(HH 
xHH 
=>HH 
xHH 
.HH 
DebitHH 
)HH 
.HH 
NameHH "
(HH" #
$strHH# *
)HH* +
;HH+ ,
MapII 
(II 
xII 
=>II 
xII 
.II 
CreditII 
)II 
.II 
NameII #
(II# $
$strII$ ,
)II, -
;II- .
MapJJ 
(JJ 
xJJ 
=>JJ 
xJJ 
.JJ 
DateJJ 
)JJ 
.JJ 
NameJJ !
(JJ! "
$strJJ" (
)JJ( )
;JJ) *
MapKK 
(KK 
xKK 
=>KK 
xKK 
.KK 
AccountNumberKK $
)KK$ %
.KK% &
NameKK& *
(KK* +
$strKK+ :
)KK: ;
;KK; <
}LL 	
}MM 
}NN 
ƒ
UC:\Users\matt\Source\Repos\Accounting\Accounting.Web\Controllers\CompanyController.cs
	namespace 	

Accounting
 
. 
Web 
. 
Controllers $
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
CompanyController "
:# $

Controller% /
{ 
private 
readonly %
ICompanyManagementService 2
_service3 ;
;; <
private 
IValidatorFactory !
_validatorFactory" 3
;3 4
public 
CompanyController  
(  !
IValidatorFactory 
validatorFactory .
,. /%
ICompanyManagementService %
service& -
) 
{ 	
_validatorFactory 
= 
validatorFactory  0
;0 1
_service 
= 
service 
; 
} 	
[ 	
HttpPost	 
( 
$str !
)! "
]" #
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0
[ 
FromBody 
] 
Company 
request &
) 
{ 	
_validatorFactory 
. 
ValidateAndThrow .
<. /
Company/ 6
>6 7
(7 8
request8 ?
)? @
;@ A
var 
( 
success 
, 
result  
)  !
=" #
await$ )
_service* 2
.2 3
Create3 9
(9 :
request: A
)A B
;B C
var   
response   
=   
new   
ApiResponse   *
<  * +
Company  + 2
>  2 3
(  3 4
)  4 5
{!! 
Data"" 
="" 
success"" 
?""  
result""! '
:""( )
null""* .
,"". /
SuccessMessage## 
=##  
$str##! >
,##> ?
FailureMessage$$ 
=$$  
$str$$! ;
}%% 
;%% 
return&& 
new&& 
OkObjectResult&& %
(&&% &
response&&& .
)&&. /
;&&/ 0
}'' 	
}(( 
})) ³&
ZC:\Users\matt\Source\Repos\Accounting\Accounting.Web\Controllers\TransactionsController.cs
	namespace 	

Accounting
 
. 
Web 
. 
Controllers $
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class "
TransactionsController '
:( )

Controller* 4
{ 
private 
readonly 
IValidatorFactory *
_validatorFactory+ <
;< =
private 
readonly 
ITransactionService ,
_transactionService- @
;@ A
public "
TransactionsController %
(% &
IValidatorFactory 
validatorFactory .
,. /
ITransactionService 
transactionService  2
) 
{ 	
_validatorFactory 
= 
validatorFactory  0
;0 1
_transactionService 
=  !
transactionService" 4
;4 5
} 	
[ 	
HttpPost	 
( 
$str $
)$ %
]% &
public 
async 
Task 
< 
IActionResult '
>' (
PostTransactionsCsv) <
(< =
[ 
FromBody 
] 
string 
csv !
) 
{ 	
_validatorFactory 
. 
ValidateAndThrow .
<. /
string/ 5
>5 6
(6 7
csv7 :
,: ;
$num< =
)= >
;> ?
await"" 
_transactionService"" %
.""% &!
RecordTransactionsCsv""& ;
(""; <
csv""< ?
)""? @
;""@ A
var## 
response## 
=## 
new## 
ApiResponse## *
<##* +
bool##+ /
>##/ 0
(##0 1
)##1 2
{$$ 
Data%% 
=%% 
true%% 
,%% 
SuccessMessage&& 
=&&  
$str&&! A
}'' 
;'' 
return(( 
new(( 
OkObjectResult(( %
(((% &
response((& .
)((. /
;((/ 0
})) 	
[++ 	
HttpPost++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
	PostDebit,,) 2
(,,2 3
[-- 
FromBody-- 
]-- 
Debit-- 
debit-- !
).. 
{// 	
_validatorFactory00 
.00 
ValidateAndThrow00 .
<00. /
Debit00/ 4
>004 5
(005 6
debit006 ;
,00; <
$num00= >
)00> ?
;00? @
await44 
_transactionService44 %
.44% &
RecordDebit44& 1
(441 2
debit442 7
)447 8
;448 9
var55 
response55 
=55 
new55 
ApiResponse55 *
<55* +
bool55+ /
>55/ 0
(550 1
)551 2
{66 
Data77 
=77 
true77 
,77 
SuccessMessage88 
=88  
$str88! ;
}99 
;99 
return:: 
new:: 
OkObjectResult:: %
(::% &
response::& .
)::. /
;::/ 0
};; 	
[== 	
HttpPost==	 
(== 
$str== 
)== 
]==  
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (

PostCredit>>) 3
(>>3 4
[?? 
FromBody?? 
]?? 
Credit?? 
credit?? #
)@@ 
{AA 	
_validatorFactoryBB 
.BB 
ValidateAndThrowBB .
<BB. /
CreditBB/ 5
>BB5 6
(BB6 7
creditBB7 =
,BB= >
$numBB? @
)BB@ A
;BBA B
awaitFF 
_transactionServiceFF %
.FF% &
RecordCreditFF& 2
(FF2 3
creditFF3 9
)FF9 :
;FF: ;
varGG 
responseGG 
=GG 
newGG 
ApiResponseGG *
<GG* +
boolGG+ /
>GG/ 0
(GG0 1
)GG1 2
{HH 
DataII 
=II 
trueII 
,II 
SuccessMessageJJ 
=JJ  
$strJJ! ;
}KK 
;KK 
returnLL 
newLL 
OkObjectResultLL %
(LL% &
responseLL& .
)LL. /
;LL/ 0
}MM 	
}NN 
}OO ç
ZC:\Users\matt\Source\Repos\Accounting\Accounting.Web\Middleware\ErrorHandlingMiddleware.cs
	namespace

 	

Accounting


 
.

 
Web

 
.

 

Middleware

 #
{ 
public 

class #
ErrorHandlingMiddleware (
{ 
private 
RequestDelegate 
_next  %
;% &
public #
ErrorHandlingMiddleware &
(& '
RequestDelegate 
next  
) 
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
try 
{ 
await 
_next 
( 
context #
)# $
;$ %
} 
catch 
( 
	Exception 
	exception &
)& '
{ 
var 
response 
= 
context &
.& '
Response' /
;/ 0
response   
.   
ContentType   $
=  % &
$str  ' 9
;  9 :
ApiResponse"" 
<"" 
string"" "
>""" #
apiResponse""$ /
=""0 1
new""2 5
ApiResponse""6 A
<""A B
string""B H
>""H I
(""I J
)""J K
;""K L
switch$$ 
($$ 
	exception$$ !
)$$! "
{%% 
case&& 
ValidationException&& ,
e&&- .
:&&. /
response''  
.''  !

StatusCode''! +
='', -
(''. /
int''/ 2
)''2 3
HttpStatusCode''3 A
.''A B

BadRequest''B L
;''L M
response((  
.((  !

StatusCode((! +
=((, -
$num((. 1
;((1 2
apiResponse)) #
=))$ %
e))& '
.))' (
AsApiResponse))( 5
())5 6
)))6 7
;))7 8
break** 
;** 
default++ 
:++ 
response--  
.--  !

StatusCode--! +
=--, -
(--. /
int--/ 2
)--2 3
HttpStatusCode--3 A
.--A B
InternalServerError--B U
;--U V
apiResponse.. #
=..$ %
	exception..& /
.../ 0
AsApiResponse..0 =
(..= >
)..> ?
;..? @
break// 
;// 
}00 
var22 
result22 
=22 
JsonConvert22 (
.22( )
SerializeObject22) 8
(228 9
apiResponse229 D
)22D E
;22E F
await33 
response33 
.33 

WriteAsync33 )
(33) *
result33* 0
)330 1
;331 2
}44 
}55 	
}66 
}77 ·

?C:\Users\matt\Source\Repos\Accounting\Accounting.Web\Program.cs
	namespace 	

Accounting
 
. 
Web 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ¹
aC:\Users\matt\Source\Repos\Accounting\Accounting.Web\ServiceRegistrations\ContextRegistrations.cs
	namespace 	

Accounting
 
. 
Web 
.  
ServiceRegistrations -
{ 
public 

static 
class  
ContextRegistrations ,
{		 
public

 
static

 
void

 
RegisterContexts

 +
(

+ ,
this

, 0
IServiceCollection

1 C
services

D L
,

L M
IConfiguration

N \
configuration

] j
)

j k
{ 	
services 
. 
AddTransient !
<! ""
ICrudRepositoryFactory" 8
>8 9
(9 :
x: ;
=>< >
new (
MongoDbCrudRepositoryFactory 0
(0 1
configuration !
.! "
GetConnectionString" 5
(5 6
$str6 J
)J K
)K L
)L M
;M N
} 	
} 
} ï	
_C:\Users\matt\Source\Repos\Accounting\Accounting.Web\ServiceRegistrations\LoaderRegistration.cs
	namespace		 	

Accounting		
 
.		 
Web		 
.		  
ServiceRegistrations		 -
{

 
public 

static 
class 
LoaderRegistration *
{ 
public 
static 
void 
RegisterLoaders *
(* +
this+ /
IServiceCollection0 B
servicesC K
)K L
{ 	
services 
. 
AddTransient !
<! "$
ICompanyManagementLoader" :
,: ;#
CompanyManagementLoader< S
>S T
(T U
)U V
;V W
services 
. 
AddTransient !
<! "
ITransactionLoader" 4
,4 5
TransactionLoader6 G
>G H
(H I
)I J
;J K
services 
. 
AddTransient !
<! "%
IAccountsManagementLoader" ;
,; <$
AccountsManagementLoader= U
>U V
(V W
)W X
;X Y
} 	
} 
} ø	
`C:\Users\matt\Source\Repos\Accounting\Accounting.Web\ServiceRegistrations\ServiceRegistration.cs
	namespace		 	

Accounting		
 
.		 
Web		 
.		  
ServiceRegistrations		 -
{

 
public 

static 
class 
ServiceRegistration +
{ 
public 
static 
void 
RegisterServices +
(+ ,
this, 0
IServiceCollection1 C
servicesD L
)L M
{ 	
services 
. 
AddTransient !
<! "%
ICompanyManagementService" ;
,; <$
CompanyManagementService= U
>U V
(V W
)W X
;X Y
services 
. 
AddTransient !
<! "
ITransactionService" 5
,5 6
TransactionService7 I
>I J
(J K
)K L
;L M
services 
. 
AddTransient !
<! "&
IAccountsManagementService" <
,< =%
AccountsManagementService> W
>W X
(X Y
)Y Z
;Z [
} 	
} 
} ×
cC:\Users\matt\Source\Repos\Accounting\Accounting.Web\ServiceRegistrations\ValidatorRegistrations.cs
	namespace 	

Accounting
 
. 
Web 
.  
ServiceRegistrations -
{ 
public		 

static		 
class		 "
ValidatorRegistrations		 .
{

 
public 
static 
void $
RegisterValidatorFactory 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
)T U
{ 	
services 
. 
AddTransient !
<! "
IValidatorFactory" 3
,3 4
ValidatorFactory5 E
>E F
(F G
)G H
;H I
} 	
} 
public 

	interface 
IValidatorFactory &
{ 
void 
ValidateAndThrow 
< 
T 
>  
(  !
T! "
request# *
,* +
int, /
version0 7
=8 9
$num: ;
); <
;< =
} 
public 

class 
ValidatorFactory !
:" #
IValidatorFactory$ 5
{ 
public 
void 
ValidateAndThrow $
<$ %
T% &
>& '
(' (
T( )
request* 1
,1 2
int3 6
version7 >
=? @
$numA B
)B C
{ 	
var 
	validator 
= 
GetValidator (
<( )
T) *
>* +
(+ ,
), -
;- .
if 
( 
	validator 
== 
null !
)! "
throw 
new 
	Exception #
(# $
$"$ &
$str& G
{G H
typeofH N
(N O
TO P
)P Q
}Q R
"R S
)S T
;T U
	validator 
. 
ValidateAndThrow &
<& '
T' (
>( )
() *
request* 1
)1 2
;2 3
} 	
private   
static   

IValidator   !
<  ! "
T  " #
>  # $
GetValidator  % 1
<  1 2
T  2 3
>  3 4
(  4 5
int  5 8
version  9 @
=  A B
$num  C D
)  D E
{!! 	
switch"" 
("" 
("" 
typeof"" 
("" 
T"" 
)"" 
,"" 
version""  '
)""' (
)""( )
{## 
case$$ 
($$ 
Type$$ 
t$$ 
,$$ 
int$$ !
v$$" #
)$$# $
when$$% )
t$$* +
==$$, .
typeof$$/ 5
($$5 6
Company$$6 =
)$$= >
&&$$? A
v$$B C
==$$D F
$num$$G H
:$$H I
return%% 
(%% 

IValidator%% &
<%%& '
T%%' (
>%%( )
)%%) *
new%%* -
CompanyValidator%%. >
(%%> ?
)%%? @
;%%@ A
default&& 
:&& 
throw'' 
new'' 
	Exception'' '
(''' (
$"''( *
$str''* K
{''K L
typeof''L R
(''R S
T''S T
)''T U
}''U V
"''V W
)''W X
;''X Y
}(( 
})) 	
}** 
}++ ÿ(
?C:\Users\matt\Source\Repos\Accounting\Accounting.Web\Startup.cs
	namespace 	

Accounting
 
. 
Web 
{ 
public 

class 
Startup 
{ 
private 
ILogger 
< 
Startup 
>  
_logger! (
;( )
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
RegisterServices %
(% &
)& '
;' (
services 
. 
RegisterLoaders $
($ %
)% &
;& '
services 
. 
RegisterContexts %
(% &
Configuration& 3
)3 4
;4 5
services 
. $
RegisterValidatorFactory -
(- .
). /
;/ 0
services## 
.## 
AddTransient## !
<##! "
IConfiguration##" 0
>##0 1
(##1 2
x##2 3
=>##4 6
Configuration##7 D
)##D E
;##E F
servicesFF 
.FF 
AddControllersFF #
(FF# $
)FF$ %
;FF% &
}GG 	
publicJJ 
voidJJ 
	ConfigureJJ 
(JJ 
IApplicationBuilderJJ 1
appJJ2 5
,JJ5 6
IWebHostEnvironmentJJ7 J
envJJK N
,JJN O
ILoggerJJP W
<JJW X
StartupJJX _
>JJ_ `
loggerJJa g
)JJg h
{KK 	
_loggerLL 
=LL 
loggerLL 
;LL 
ifNN 
(NN 
envNN 
.NN 
IsDevelopmentNN !
(NN! "
)NN" #
)NN# $
{OO 
appPP 
.PP %
UseDeveloperExceptionPagePP -
(PP- .
)PP. /
;PP/ 0
}QQ 
elseRR 
{SS 
appTT 
.TT 
UseHstsTT 
(TT 
)TT 
;TT 
}UU 
appVV 
.VV 
UseHttpsRedirectionVV #
(VV# $
)VV$ %
;VV% &
appXX 
.XX 

UseRoutingXX 
(XX 
)XX 
;XX 
appZZ 
.ZZ 
UseAuthenticationZZ !
(ZZ! "
)ZZ" #
;ZZ# $
app[[ 
.[[ 
UseAuthorization[[  
([[  !
)[[! "
;[[" #
app\\ 
.\\ 
UseMiddleware\\ 
<\\ #
ErrorHandlingMiddleware\\ 5
>\\5 6
(\\6 7
)\\7 8
;\\8 9
app^^ 
.^^ 
Use^^ 
(^^ 
async^^ 
(^^ 
context^^ "
,^^" #
next^^$ (
)^^( )
=>^^* ,
{__ 
await`` 
next`` 
(`` 
)`` 
;`` 
ifbb 
(bb 
contextbb 
.bb 
Responsebb $
.bb$ %

StatusCodebb% /
==bb0 2
(bb3 4
intbb4 7
)bb7 8
HttpStatusCodebb8 F
.bbF G
NotFoundbbG O
)bbO P
{cc 
_loggerdd 
.dd 
LogInformationdd *
(dd* +
$"dd+ -
$strdd- 2
{dd2 3
contextdd3 :
.dd: ;
Requestdd; B
.ddB C
HostddC G
}ddG H
$strddH I
{ddI J
contextddJ Q
.ddQ R
RequestddR Y
.ddY Z
PathddZ ^
}dd^ _
"dd_ `
)dd` a
;dda b
}ee 
ifgg 
(gg 
contextgg 
.gg 
Responsegg $
.gg$ %

StatusCodegg% /
==gg0 2
(gg3 4
intgg4 7
)gg7 8
HttpStatusCodegg8 F
.ggF G
UnauthorizedggG S
)ggS T
{hh 
_loggerii 
.ii 
LogInformationii *
(ii* +
$"ii+ -
$strii- 2
{ii2 3
contextii3 :
.ii: ;
Requestii; B
.iiB C
HostiiC G
}iiG H
$striiH I
{iiI J
contextiiJ Q
.iiQ R
RequestiiR Y
.iiY Z
PathiiZ ^
}ii^ _
"ii_ `
)ii` a
;iia b
}jj 
}kk 
)kk 
;kk 
appmm 
.mm 
UseEndpointsmm 
(mm 
	endpointsmm &
=>mm' )
{nn 
	endpointsoo 
.oo 
MapControllersoo (
(oo( )
)oo) *
;oo* +
}pp 
)pp 
;pp 
}qq 	
}rr 
}ss Ø
RC:\Users\matt\Source\Repos\Accounting\Accounting.Web\StaticConstants\ErrorCodes.cs
	namespace 	

Accounting
 
. 
Web 
. 
StaticConstants (
{ 
public 

static 
class 

ErrorCodes "
{ 
} 
} Š
SC:\Users\matt\Source\Repos\Accounting\Accounting.Web\Validators\CompanyValidator.cs
	namespace 	

Accounting
 
. 
Web 
. 

Validators #
{ 
public 

class 
CompanyValidator !
:" #
AbstractValidator$ 5
<5 6
Company6 =
>= >
{ 
public 
CompanyValidator 
(  
)  !
{		 	
RuleFor

 
(

 
x

 
=>

 
x

 
.

 
Description

 &
)

& '
. 
NotNull 
( 
) 
. 
NotEmpty 
( 
) 
. 
WithMessage 
( 
$str <
)< =
;= >
} 	
} 
} 
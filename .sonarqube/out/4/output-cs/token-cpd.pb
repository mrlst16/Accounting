·
DD:\Repos\CommonCore\CommonCore.Api\Extensions\ExceptionExtensions.cs
	namespace 	

CommonCore
 
. 
Api 
. 

Extensions #
{ 
public 

static 
class 
ExceptionExtensions +
{ 
public		 
static		 
ApiResponse		 !
<		! "
string		" (
>		( )
AsApiResponse		* 7
(		7 8
this		8 <
	Exception		= F
	exception		G P
)		P Q
{

 	
var 
response 
= 
new 
ApiResponse *
<* +
string+ 1
>1 2
(2 3
)3 4
{ 
FailureMessage 
=  
$str! =
,= >
Errors 
= 
new 
List !
<! "
ErrorResponse" /
>/ 0
(0 1
)1 2
{3 4
new 
ErrorResponse %
(% &
)& '
{' (

StackTrace "
=# $
	exception% .
.. /

StackTrace/ 9
,9 :
Message 
=  !
	exception" +
.+ ,
Message, 3
} 
} 
, 
Sucess 
= 
false 
, 
Data 
= 
null 
} 
; 
return 
response 
; 
} 	
} 
} ð
JD:\Repos\CommonCore\CommonCore.Api\Extensions\FluentValidatorExtensions.cs
	namespace		 	

CommonCore		
 
.		 
Api		 
.		 

Extensions		 #
{

 
public 

static 
class %
FluentValidatorExtensions 1
{ 
public 
static 
ApiResponse !
<! "
string" (
>( )
AsApiResponse* 7
(7 8
this8 <
ValidationResult= M
	validatorN W
)W X
=> 
new 
ApiResponse 
< 
string %
>% &
(& '
)' (
{ 
FailureMessage 
=  
$str! =
,= >
Errors 
= 
	validator "
." #
Errors# )
.) *
Select* 0
(0 1
x1 2
=>3 5
new6 9
ErrorResponse: G
(G H
)H I
{ 
Message 
= 
x 
.  
ErrorMessage  ,
,, -
	ErrorCode 
= 
x  !
.! "
	ErrorCode" +
} 
) 
. 
ToList 
( 
) 
, 
Sucess 
= 
false 
, 
Data 
= 
null 
} 
; 
public 
static 
ApiResponse !
<! "
string" (
>( )
AsApiResponse* 7
(7 8
this8 <
ValidationException= P
	validatorQ Z
)Z [
=> 
new 
ApiResponse 
< 
string %
>% &
(& '
)' (
{ 
FailureMessage 
=  
$str! =
,= >
Errors 
= 
	validator "
." #
Errors# )
.) *
Select* 0
(0 1
x1 2
=>3 5
new6 9
ErrorResponse: G
(G H
)H I
{   
Message!! 
=!! 
x!! 
.!!  
ErrorMessage!!  ,
,!!, -
	ErrorCode"" 
="" 
x""  !
.""! "
	ErrorCode""" +
}## 
)## 
.$$ 
ToList$$ 
($$ 
)$$ 
,$$ 
Sucess%% 
=%% 
false%% 
,%% 
Data&& 
=&& 
null&& 
}'' 
;'' 
public)) 
static)) 
Stream)) 
ToBodyStreamJson)) -
())- .
this)). 2
ValidationException))3 F
	exception))G P
,))P Q
Encoding))R Z
encoding))[ c
)))c d
{** 	
var++ 
apiResponse++ 
=++ 
	exception++ '
.++' (
AsApiResponse++( 5
(++5 6
)++6 7
;++7 8
var-- 
jsonStringResponse-- "
=--# $
JsonConvert--% 0
.--0 1
SerializeObject--1 @
(--@ A
apiResponse--A L
)--L M
;--M N
var.. 
bytes.. 
=.. 
encoding..  
...  !
GetBytes..! )
(..) *
jsonStringResponse..* <
)..< =
;..= >
return// 
new// 
MemoryStream// #
(//# $
bytes//$ )
)//) *
;//* +
}00 	
public22 
static22 
Stream22 
ToBodyStreamJson22 -
(22- .
this22. 2
ValidationException223 F
	exception22G P
)22P Q
=>33 
	exception33 
.33 
ToBodyStreamJson33 )
(33) *
Encoding33* 2
.332 3
UTF8333 7
)337 8
;338 9
}44 
}55 ¨
;D:\Repos\CommonCore\CommonCore.Api\Handlers\ErrorHandler.cs
	namespace 	

CommonCore
 
. 
Api 
. 
Handlers !
{ 
public 

class 
ErrorHandler 
{ 
} 
} ù
FD:\Repos\CommonCore\CommonCore.Api\Handlers\JWTAuthorizationHandler.cs
	namespace 	

CommonCore
 
. 
Api 
. 
Handlers !
{ 
public 

class #
JWTAuthorizationHandler (
:) * 
AuthorizationHandler+ ?
<? @'
JWTAuthorizationRequirement@ [
>[ \
{ 
	protected 
async 
override  
Task! %"
HandleRequirementAsync& <
(< ='
AuthorizationHandlerContext= X
contextY `
,` a'
JWTAuthorizationRequirementb }
requirement	~ ‰
)
‰ Š
{		 	
if

 
(

 
string

 
.

 
IsNullOrWhiteSpace

 )
(

) *
context

* 1
?

1 2
.

2 3
User

3 7
?

7 8
.

8 9
Identity

9 A
?

A B
.

B C
Name

C G
)

G H
)

H I
{ 
context 
. 
Fail 
( 
) 
; 
return 
; 
} 
context 
. 
Succeed 
( 
requirement '
)' (
;( )
} 	
} 
public 

class '
JWTAuthorizationRequirement ,
:- .%
IAuthorizationRequirement/ H
{ 
} 
} 
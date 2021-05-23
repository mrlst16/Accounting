Ö
JD:\Repos\CommonCore\CommonCore.Interfaces\Loaders\IAuthenticationLoader.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
Loaders  '
{ 
public 

	interface !
IAuthenticationLoader *
{ 
Task		 
<		 
	IResponse		 
>		 
SetupPassword		 %
(		% &
PasswordRequest		& 5
request		6 =
)		= >
;		> ?
Task

 
<

 
	IResponse

 
<

 
PasswordRecord

 %
>

% &
>

& '
Authenticate

( 4
(

4 5
PasswordRequest

5 D
request

E L
)

L M
;

M N
} 
} æ
ND:\Repos\CommonCore\CommonCore.Interfaces\Loaders\IAuthorizationTokenLoader.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
Loaders  '
{ 
public 

	interface %
IAuthorizationTokenLoader .
{ 
Task		 
<		 
	IResponse		 
<		 
string		 
>		 
>		 
GetToken		  (
(		( )
PasswordRecord		) 7
record		8 >
)		> ?
;		? @
}

 
} ≠
GD:\Repos\CommonCore\CommonCore.Interfaces\Repository\ICrudRepository.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  

Repository  *
{ 
public		 

	interface		 
ICrudRepository		 $
<		$ %
T		% &
>		& '
{

 
Task 
Create 
( 
IEnumerable 
<  
T  !
>! "
items# (
)( )
;) *
Task 
Create 
( 
T 
items 
) 
; 
Task 
< 
IEnumerable 
< 
T 
> 
> 
Read !
(! "

Expression" ,
<, -
Func- 1
<1 2
T2 3
,3 4
bool5 9
>9 :
>: ;
filter< B
)B C
;C D
Task 
< 
IEnumerable 
< 
T 
> 
> 
Read !
(! "
SearchRequest" /
</ 0
T0 1
>1 2
searchRequest3 @
)@ A
;A B
Task 
< 
T 
> 
First 
( 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
filter0 6
)6 7
;7 8
Task 
< 
( 
bool 
, 
T 
) 
> 
Update 
( 
T  
item! %
,% &

Expression' 1
<1 2
Func2 6
<6 7
T7 8
,8 9
bool: >
>> ?
>? @
filterA G
)G H
;H I
Task 
< 
bool 
> 
Delete 
( 

Expression $
<$ %
Func% )
<) *
T* +
,+ ,
bool- 1
>1 2
>2 3

expression4 >
)> ?
;? @
Task 
< 
bool 
> 

DeleteBulk 
( 

Expression (
<( )
Func) -
<- .
T. /
,/ 0
bool1 5
>5 6
>6 7
filter8 >
)> ?
;? @
} 
} á
ND:\Repos\CommonCore\CommonCore.Interfaces\Repository\ICrudRepositoryFactory.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  

Repository  *
{ 
public 

	interface "
ICrudRepositoryFactory +
{ 
ICrudRepository 
< 
T 
> 
Get 
< 
T  
>  !
(! "
)" #
;# $
} 
} Å
@D:\Repos\CommonCore\CommonCore.Interfaces\RuleTrees\IRuleNode.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	RuleTrees  )
{ 
public 

	interface 
	IRuleNode 
{ 
IEnumerable		 
<		 
	IRuleNode		 
>		 
Children		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
Guid

 
ID

 
{

 
get

 
;

 
set

 
;

 
}

 
Guid 
ParentID 
{ 
get 
; 
set  
;  !
}" #
Task 
< 
bool 
> 
Passes 
( 
) 
; 
} 
} ƒ
@D:\Repos\CommonCore\CommonCore.Interfaces\RuleTrees\IRuleTree.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	RuleTrees  )
{ 
public 

	interface 
	IRuleTree 
{ 
	IRuleNode 
BaseNode 
{ 
get  
;  !
set" %
;% &
}' (
Task 
< 
bool 
> 
Passes 
( 
) 
; 
}		 
}

  
ID:\Repos\CommonCore\CommonCore.Interfaces\RuleTrees\IRuleTreeAssembler.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	RuleTrees  )
{ 
public 

	interface 
IRuleTreeAssembler '
{ 
Task 
Assemble 
( 
	IRuleTree 
ruleTree  (
)( )
;) *
} 
}		 ¸
MD:\Repos\CommonCore\CommonCore.Interfaces\RuleTrees\IRuleTreeValueProvider.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	RuleTrees  )
{ 
public 

	interface "
IRuleTreeValueProvider +
{ 
Task 
< 
object 
> 
GetValue 
( 
string $
key% (
)( )
;) *
} 
}		 Å
LD:\Repos\CommonCore\CommonCore.Interfaces\Services\IAuthenticationService.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
Services  (
{ 
public 

	interface "
IAuthenticationService +
{ 
Task		 
<		 
	IResponse		 
>		 
SetupPassword		 %
(		% &
PasswordRequest		& 5
request		6 =
)		= >
;		> ?
Task

 
<

 
	IResponse

 
<

 
string

 
>

 
>

 
Authenticate

  ,
(

, -
PasswordRequest

- <
request

= D
)

D E
;

E F
} 
} ÿ
>D:\Repos\CommonCore\CommonCore.Interfaces\Utilities\IMapper.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	Utilities  )
{ 
public 

	interface 
IMapper 
< 
TIn  
,  !
TOut" &
>& '
{ 
Task 
< 
TOut 
> 
Map 
( 
TIn 
source !
)! "
;" #
} 
public

 

	interface

 
IMapper

 
<

 
TIn1

 !
,

! "
TIn2

# '
,

' (
TOut

) -
>

- .
{ 
Task 
< 
TOut 
> 
Map 
( 
TIn1 
source1 #
,# $
TIn2% )
source2* 1
)1 2
;2 3
} 
public 

	interface 
IMapper 
< 
TIn1 !
,! "
TIn2# '
,' (
TIn3) -
,- .
TOut/ 3
>3 4
{ 
Task 
< 
TOut 
> 
Map 
( 
TIn1 
source1 #
,# $
TIn2% )
source2* 1
,1 2
TIn33 7
source38 ?
)? @
;@ A
} 
} Ì
AD:\Repos\CommonCore\CommonCore.Interfaces\Utilities\IValidator.cs
	namespace 	

CommonCore
 
. 

Interfaces 
.  
	Utilities  )
{ 
public 

	interface 

IValidator 
{ 
void #
ThrowExceptionIfInvalid $
<$ %
T% &
>& '
(' (
T( )
request* 1
)1 2
;2 3
} 
} 
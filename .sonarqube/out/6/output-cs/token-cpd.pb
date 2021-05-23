ª
OC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Accounts\AccountBase.cs
	namespace 	

Accounting
 
. 
Models 
. 
Accounts $
{ 
public		 

abstract		 
class		 
AccountBase		 %
:		& '

EntityBase		( 2
{

 
public 
Guid 
	CompanyID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
abstract 
AccountTypeEnum '
Account( /
{0 1
get2 5
;5 6
}7 8
public 
abstract 
decimal 
Balance  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
IEnumerable 
< 
Credit !
>! "
Credits# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
IEnumerable 
< 
Debit  
>  !
Debits" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} É
IC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Accounts\Asset.cs
	namespace 	

Accounting
 
. 
Models 
. 
Accounts $
{ 
public 

class 
Asset 
: 
AccountBase $
{ 
public 
override 
AccountTypeEnum '
Account( /
=>0 2
AccountTypeEnum3 B
.B C
AssetC H
;H I
public		 
override		 
decimal		 
Balance		  '
{		( )
get		* -
=>		. 0
throw		1 6
new		7 :
System		; A
.		A B#
NotImplementedException		B Y
(		Y Z
)		Z [
;		[ \
set		] `
=>		a c
throw		d i
new		j m
System		n t
.		t u$
NotImplementedException			u å
(
		å ç
)
		ç é
;
		é è
}
		ê ë
}

 
} â
JC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Accounts\Equity.cs
	namespace 	

Accounting
 
. 
Models 
. 
Accounts $
{ 
public 

class 
Equity 
: 
AccountBase %
{ 
public 
override 
AccountTypeEnum '
Account( /
=>0 2
AccountTypeEnum3 B
.B C
	LiabilityC L
;L M
public		 
override		 
decimal		 
Balance		  '
{		( )
get		* -
=>		. 0
throw		1 6
new		7 :
System		; A
.		A B#
NotImplementedException		B Y
(		Y Z
)		Z [
;		[ \
set		] `
=>		a c
throw		d i
new		j m
System		n t
.		t u$
NotImplementedException			u å
(
		å ç
)
		ç é
;
		é è
}
		ê ë
}

 
} å
MC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Accounts\Liability.cs
	namespace 	

Accounting
 
. 
Models 
. 
Accounts $
{ 
public 

class 
	Liability 
: 
AccountBase (
{ 
public 
override 
AccountTypeEnum '
Account( /
=>0 2
AccountTypeEnum3 B
.B C
EquityC I
;I J
public		 
override		 
decimal		 
Balance		  '
{		( )
get		* -
=>		. 0
throw		1 6
new		7 :
System		; A
.		A B#
NotImplementedException		B Y
(		Y Z
)		Z [
;		[ \
set		] `
=>		a c
throw		d i
new		j m
System		n t
.		t u$
NotImplementedException			u å
(
		å ç
)
		ç é
;
		é è
}
		ê ë
}

 
} ≤
LC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Companies\Company.cs
	namespace 	

Accounting
 
. 
Models 
. 
	Companies %
{ 
public 

class 
Company 
: 

EntityBase %
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
Address

 
Address

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} ï
OC:\Users\matt\Source\Repos\Accounting\Accounting.Models\DTO\GetReportRequest.cs
	namespace 	

Accounting
 
. 
Models 
. 
DTO 
{ 
public 

class 
GetReportRequest !
{ 
public 
Guid 
	CompanyID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
DateTime		 
EndDate		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} ˛
PC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Enums\AccountTypeEnum.cs
	namespace 	

Accounting
 
. 
Models 
. 
Enums !
{ 
public 

enum 
AccountTypeEnum 
{ 
Asset 
= 
$num 
, 
	Liability 
= 
$num 
, 
Equity 
= 
$num 
} 
}		 ≥
MC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Reports\ReportBase.cs
	namespace 	

Accounting
 
. 
Models 
. 
Reports #
{ 
public 

abstract 
class 

ReportBase $
:% &

EntityBase' 1
{ 
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
DateTime		 
EndDate		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} ô	
QC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Reports\ReportGrouping.cs
	namespace 	

Accounting
 
. 
Models 
. 
Reports #
{ 
public 

class 
ReportGrouping 
:  !

EntityBase" ,
{		 
public

 
string

 
Title

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
Guid 
ReportID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
public 
List 
< 
AccountBase 
>  
Accounts! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
List> B
<B C
AccountBaseC N
>N O
(O P
)P Q
;Q R
} 
} Í
OC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Reports\TrialBalance.cs
	namespace 	

Accounting
 
. 
Models 
. 
Reports #
{ 
public 

class 
TrialBalance 
: 

ReportBase  *
{ 
public 
IEnumerable 
< 
Asset  
>  !
Assets" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public		 
IEnumerable		 
<		 
	Liability		 $
>		$ %
Liabilities		& 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
IEnumerable

 
<

 
Equity

 !
>

! "
Equities

# +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
decimal 
AssetsBalance $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
LiabilitiesBalance )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
decimal 
EquitiesBalance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 

IsBalanced 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ë
NC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Transactions\Credit.cs
	namespace 	

Accounting
 
. 
Models 
. 
Transactions (
{ 
public 

class 
Credit 
: 
TransactionBase )
{ 
} 
} Ê
MC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Transactions\Debit.cs
	namespace 	

Accounting
 
. 
Models 
. 
Transactions (
{ 
public 

class 
Debit 
: 
TransactionBase (
{ 
} 
} ‡
WC:\Users\matt\Source\Repos\Accounting\Accounting.Models\Transactions\TransactionBase.cs
	namespace 	

Accounting
 
. 
Models 
. 
Transactions (
{ 
public 

abstract 
class 
TransactionBase )
:* +

EntityBase, 6
{ 
public 
Guid 
	AccountID 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
decimal		 
Amount		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
} 
} ƒ
\C:\Users\matt\Source\Repos\Accounting\Accounting.Models\Transactions\TransactionCsvRecord.cs
	namespace 	

Accounting
 
. 
Models 
. 
Transactions (
{ 
public 

class  
TransactionCsvRecord %
{ 
public 
string 
Debit 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Credit 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
AccountNumber #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Date 
{ 
get  
;  !
set" %
;% &
}' (
}

 
} 
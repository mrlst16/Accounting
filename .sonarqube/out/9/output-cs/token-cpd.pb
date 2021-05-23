ã
dC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Accounts\IAccountsManagementLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
Accounts# +
{ 
public 

	interface %
IAccountsManagementLoader .
{ 
Task 
	PostAsset 
( 
Asset 
asset "
)" #
;# $
Task		 
PostLiability		 
(		 
	Liability		 $
	liability		% .
)		. /
;		/ 0
Task

 

PostEquity

 
(

 
Equity

 
equity

 %
)

% &
;

& '
} 
} ç
eC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Accounts\IAccountsManagementService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
Accounts# +
{ 
public 

	interface &
IAccountsManagementService /
{ 
Task 
	PostAsset 
( 
Asset 
asset "
)" #
;# $
Task		 
PostLiability		 
(		 
	Liability		 $
	liability		% .
)		. /
;		/ 0
Task

 

PostEquity

 
(

 
Equity

 
equity

 %
)

% &
;

& '
} 
} ∞	
dC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Companies\ICompanyManagementLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
	Companies# ,
{ 
public 

	interface $
ICompanyManagementLoader -
{ 
Task		 
<		 
(		 
bool		 
,		 
Company		 
)		 
>		 
Create		 $
(		$ %
Company		% ,
company		- 4
)		4 5
;		5 6
Task

 
<

 
Company

 
>

 
Get

 
(

 
Guid

 
id

 !
)

! "
;

" #
Task 
< 
( 
bool 
, 
Company 
) 
> 
Update $
($ %
Company% ,
company- 4
)4 5
;5 6
Task 
< 
bool 
> 
Delete 
( 
Guid 
id !
)! "
;" #
} 
} ≤	
eC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Companies\ICompanyManagementService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
	Companies# ,
{ 
public 

	interface %
ICompanyManagementService .
{ 
Task		 
<		 
(		 
bool		 
,		 
Company		 
)		 
>		 
Create		 $
(		$ %
Company		% ,
company		- 4
)		4 5
;		5 6
Task

 
<

 
Company

 
>

 
Get

 
(

 
Guid

 
id

 !
)

! "
;

" #
Task 
< 
( 
bool 
, 
Company 
) 
> 
Update $
($ %
Company% ,
company- 4
)4 5
;5 6
Task 
< 
bool 
> 
Delete 
( 
Guid 
id !
)! "
;" #
} 
} Â
oC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Reporting\IFundamentalFinancialReportsService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
	Reporting# ,
{ 
public 

	interface /
#IFundamentalFinancialReportsService 8
{ 
Task		 
<		 
TrialBalance		 
>		 
GetTrailBalance		 *
(		* +
GetReportRequest		+ ;
request		< C
)		C D
;		D E
}

 
} õ
ZC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Reporting\IReportsLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
	Reporting# ,
{ 
public 

	interface 
IReportsLoader #
{		 
Task

 
<

 
(

 
IEnumerable

 
<

 
Asset

 
>

  
,

  !
IEnumerable

" -
<

- .
	Liability

. 7
>

7 8
,

8 9
IEnumerable

: E
<

E F
Equity

F L
>

L M
)

M N
>

N O
GetAccounts

P [
(

[ \
GetReportRequest

\ l
request

m t
)

t u
;

u v
Task 
< 
IEnumerable 
< 
Asset 
> 
>  
	GetAssets! *
(* +
GetReportRequest+ ;
request< C
)C D
;D E
Task 
< 
IEnumerable 
< 
	Liability "
>" #
># $
GetLiabilities% 3
(3 4
GetReportRequest4 D
requestE L
)L M
;M N
Task 
< 
IEnumerable 
< 
Equity 
>  
>  !
GetEquities" -
(- .
GetReportRequest. >
request? F
)F G
;G H
} 
} Ú
aC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Transactions\ITransactionLoader.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
Transactions# /
{ 
public 

	interface 
ITransactionLoader '
{ 
Task		 
RecordDebit		 
(		 
Debit		 
debit		 $
)		$ %
;		% &
Task

 
RecordDebits

 
(

 
IEnumerable

 %
<

% &
Debit

& +
>

+ ,
debits

- 3
)

3 4
;

4 5
Task 
RecordCredit 
( 
Credit  
credit! '
)' (
;( )
Task 
RecordCredits 
( 
IEnumerable &
<& '
Credit' -
>- .
credits/ 6
)6 7
;7 8
} 
} ä
bC:\Users\matt\Source\Repos\Accounting\Accounting.BLL.Interface\Transactions\ITransactionService.cs
	namespace 	

Accounting
 
. 
BLL 
. 
	Interface "
." #
Transactions# /
{ 
public 

	interface 
ITransactionService (
{ 
Task 
RecordDebit 
( 
Debit 
debit $
)$ %
;% &
Task		 
RecordCredit		 
(		 
Credit		  
credit		! '
)		' (
;		( )
Task

 !
RecordTransactionsCsv

 "
(

" #
string

# )
csv

* -
)

- .
;

. /
} 
} 
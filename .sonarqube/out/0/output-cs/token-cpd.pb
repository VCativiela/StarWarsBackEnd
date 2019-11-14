ð
`C:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Controllers\ValuesController.cs
	namespace 	
StarWarsBackEnd
 
. 
Controllers %
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
ValuesController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IRepository $
_repository% 0
;0 1
private 
readonly 
IDataSplitter &
_dataSplitter' 4
;4 5
public 
ValuesController 
(  
IRepository  +

repository, 6
,6 7
IDataSplitter8 E
dataSplitterF R
)R S
{ 	
_repository 
= 

repository $
;$ %
_dataSplitter 
= 
dataSplitter (
;( )
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
Post !
(! "
[" #
FromBody# +
]+ ,
StringCollection, <
value= B
)B C
{ 	
try 
{ 
var 
rebelsCollection $
=% &
_dataSplitter' 4
.4 5
	SplitData5 >
(> ?
value? D
)D E
;E F
_repository 
. 
SaveData $
($ %
rebelsCollection% 5
)5 6
;6 7
return 
Ok 
( 
) 
; 
} 
catch   
(   
ServiceException   #
)  # $
{!! 
return"" 

BadRequest"" !
(""! "
$str""" >
)""> ?
;""? @
}## 
catch$$ 
($$ 
RepositoryException$$ &
)$$& '
{%% 
return&& 

BadRequest&& !
(&&! "
$str&&" >
)&&> ?
;&&? @
}'' 
}(( 	
})) 
}** ²
~C:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Infraestructure\Exceptions\Controllers\ControllerException.cs
	namespace 	
StarWarsBackEnd
 
. 
Infraestructure )
.) *

Exceptions* 4
.4 5
Models5 ;
{ 
public 

class 
ControllerException $
:% & 
ApplicationException' ;
{		 
public

 
ControllerException

 &
(

& '
string

' -
descripcion

. 9
)

9 :
:

; <
base

= A
(

A B
descripcion

B M
)

M N
{

O P
}

Q R
public 
ControllerException &
(& '
string' -
descripcion. 9
,9 :
	Exception; D
innerExceptionE S
)S T
:U V
baseW [
([ \
descripcion\ g
,g h
innerExceptioni w
)w x
{y z
}{ |
} 
} Ç
…C:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Infraestructure\Exceptions\Infrastructure\InfrastructureException.cs
	namespace 	
StarWarsBackEnd
 
. 
Infraestructure )
.) *

Exceptions* 4
.4 5
Models5 ;
{ 
public 

class #
InfrastructureException (
:) * 
ApplicationException+ ?
{		 
public

 #
InfrastructureException

 *
(

* +
string

+ 1
descripcion

2 =
)

= >
:

? @
base

A E
(

E F
descripcion

F Q
)

Q R
{

S T
}

U V
public #
InfrastructureException *
(* +
string+ 1
descripcion2 =
,= >
	Exception? H
innerExceptionI W
)W X
:Y Z
base[ _
(_ `
descripcion` k
,k l
innerExceptionm {
){ |
{} ~
}	 €
} 
} ™
tC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Infraestructure\Exceptions\Models\ModelException.cs
	namespace 	
StarWarsBackEnd
 
. 
Infraestructure )
.) *

Exceptions* 4
.4 5
Models5 ;
{ 
public 

class 
ModelException 
:   
ApplicationException! 5
{		 
public

 
ModelException

 !
(

! "
string

" (
descripcion

) 4
)

4 5
:

6 7
base

8 <
(

< =
descripcion

= H
)

H I
{

J K
}

L M
public 
ModelException !
(! "
string" (
descripcion) 4
,4 5
	Exception6 ?
innerException@ N
)N O
:P Q
baseR V
(V W
descripcionW b
,b c
innerExceptiond r
)r s
{t u
}v w
} 
} ±
}C:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Infraestructure\Exceptions\Repository\RepositoryException.cs
	namespace 	
StarWarsBackEnd
 
. 
Infraestructure )
.) *

Exceptions* 4
.4 5
Models5 ;
{ 
public 

class 
RepositoryException $
:% & 
ApplicationException' ;
{		 
public

 
RepositoryException

 &
(

& '
string

' -
descripcion

. 9
)

9 :
:

; <
base

= A
(

A B
descripcion

B M
)

M N
{

O P
}

Q R
public 
RepositoryException &
(& '
string' -
descripcion. 9
,9 :
	Exception; D
innerExceptionE S
)S T
:U V
baseW [
([ \
descripcion\ g
,g h
innerExceptioni w
)w x
{y z
}{ |
} 
} £
xC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Infraestructure\Exceptions\Services\ServiceException.cs
	namespace 	
StarWarsBackEnd
 
. 
Infraestructure )
.) *

Exceptions* 4
.4 5
Models5 ;
{ 
public 

class 
ServiceException !
:" # 
ApplicationException$ 8
{		 
public

 
ServiceException

 #
(

# $
string

$ *
descripcion

+ 6
)

6 7
:

8 9
base

: >
(

> ?
descripcion

? J
)

J K
{

L M
}

N O
public 
ServiceException #
(# $
string$ *
descripcion+ 6
,6 7
	Exception8 A
innerExceptionB P
)P Q
:R S
baseT X
(X Y
descripcionY d
,d e
innerExceptionf t
)t u
{v w
}x y
} 
} ¶
XC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Models\Classes\Rebel.cs
	namespace 	
StarWarsBackEnd
 
. 
Models  
.  !
Classes! (
{ 
public 

class 
Rebel 
: 
IRebel 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Planet 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
DateTime		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} €
aC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Models\Factories\RebelFactory.cs
	namespace 	
StarWarsBackEnd
 
. 
Models  
.  !
	Factories! *
{ 
public 

static 
class 
RebelFactory $
{ 
public		 
static		 
Rebel		 
CreateInstance		 *
(		* +
string		+ 1
name		2 6
,		6 7
string		8 >
planet		? E
)		E F
{

 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
name% )
)) *
||+ -
string. 4
.4 5
IsNullOrWhiteSpace5 G
(G H
nameH L
)L M
)M N
{ 
throw 
new 
ModelException (
(( )
$str) 4
)4 5
;5 6
} 
if 
( 
string 
. 
IsNullOrEmpty $
($ %
planet% +
)+ ,
||- /
string0 6
.6 7
IsNullOrWhiteSpace7 I
(I J
planetJ P
)P Q
)Q R
{ 
throw 
new 
ModelException (
(( )
$str) 6
)6 7
;7 8
} 
return 
new 
Rebel 
( 
) 
{ 
Name 
= 
name 
, 
Planet 
= 
planet 
,  
DateTime 
= 
DateTime #
.# $
Now$ '
.' (
ToString( 0
(0 1
)1 2
} 
; 
} 	
} 
} Ñ
\C:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Models\Interfaces\IRebel.cs
	namespace 	
StarWarsBackEnd
 
. 
Models  
.  !

Interfaces! +
{ 
public 

	interface 
IRebel 
{		 
}

 
} ß
cC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Models\Interfaces\IRebelFactory.cs
	namespace 	
StarWarsBackEnd
 
. 
Models  
.  !

Interfaces! +
{		 
public

 

	interface

 
IRebelFactory

 "
{ 
} 
} ô
KC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Program.cs
	namespace 	
StarWarsBackEnd
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	 
CreateWebHostBuilder  
(  !
args! %
)% &
.& '
Build' ,
(, -
)- .
.. /
Run/ 2
(2 3
)3 4
;4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} ™
kC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Persistence\Classes\FileWriter.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Persistence# .
.. /
Classes/ 6
{ 
public 

class 

FileWriter 
: 
IFileWriter )
{ 
public 
async 
void 
SaveFile "
(" #
IEnumerable# .
<. /
Rebel/ 4
>4 5

collection6 @
)@ A
{ 	
try 
{ 
var 
fileName 
= 
Path #
.# $
Combine$ +
(+ ,
Path 
. 
GetFullPath $
($ %
	AppDomain% .
.. /
CurrentDomain/ <
.< =
BaseDirectory= J
)J K
,K L
DateTimeM U
.U V
NowV Y
.Y Z
ToStringZ b
(b c
$strc t
)t u
+v w
$strx 
)	 €
;
€ 

TextWriter 
writer !
;! "
using 
( 
writer 
= 
new  #
StreamWriter$ 0
(0 1
fileName2 :
,: ;
append< B
:B C
falseD I
)I J
)J K
{ 
var 
json 
= 
JsonConvert *
.* +
SerializeObject+ :
(: ;

collection; E
)E F
;F G
await 
writer  
.  !
WriteLineAsync! /
(/ 0
json0 4
)4 5
;5 6
} 
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw   
new   
ServiceException   *
(  * +
$str  + I
,  I J
ex  K M
)  M N
;  N O
}!! 
}"" 	
}## 
}$$ Ê
oC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Persistence\Interfaces\IFileWriter.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Persistence# .
.. /

Interfaces/ 9
{ 
public		 

	interface		 
IFileWriter		  
{

 
void 
SaveFile 
( 
IEnumerable !
<! "
Rebel" '
>' (

collection) 3
)3 4
;4 5
} 
} ¤
pC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Repositories\Clases\FileRespository.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Repositories# /
./ 0
Clases0 6
{		 
public

 

class

 
FileRepository

 
:

  !
IRepository

" -
{ 
private 
readonly 
IFileWriter $
_fileWriter% 0
;0 1
public 
FileRepository 
( 
IFileWriter )

fileWriter* 4
)4 5
{ 	
_fileWriter 
= 

fileWriter $
;$ %
} 	
public 
void 
SaveData 
( 
List !
<! "
Rebel" '
>' (
lista) .
). /
{ 	
try 
{ 
_fileWriter 
. 
SaveFile $
($ %
lista% *
)* +
;+ ,
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new 
RepositoryException -
(- .
$str. @
,@ A
exB D
)D E
;E F
} 
} 	
} 
} À
pC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Repositories\Interfaces\IRepository.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Repositories# /
./ 0

Interfaces0 :
{ 
public		 

	interface		 
IRepository		  
{

 
void 
SaveData 
( 
List 
< 
Rebel  
>  !
lista" '
)' (
;( )
} 
} œ
cC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Splitter\IDataSplitter.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Splitter# +
{ 
public 

	interface 
IDataSplitter "
{ 
List		 
<		 
Rebel		 
>		 
	SplitData		 
(		 
StringCollection		 .

collection		/ 9
)		9 :
;		: ;
}

 
} ™
cC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Services\Splitter\RebelSplitter.cs
	namespace 	
StarWarsBackEnd
 
. 
Services "
." #
Splitter# +
{		 
public

 

class

 
RebelSplitter

 
:

  
IDataSplitter

! .
{ 
public 
List 
< 
Rebel 
> 
	SplitData $
($ %
StringCollection% 5

collection6 @
)@ A
{ 	
var 
	rebelList 
= 
new 
List  $
<$ %
Rebel% *
>* +
(+ ,
), -
;- .
var 
rebelListEx 
= 
new !
List" &
<& '
	Exception' 0
>0 1
(1 2
)2 3
;3 4
foreach 
( 
var 
linea 
in !

collection" ,
), -
{ 
try 
{ 
String 
[ 
] 
data !
=" #
linea$ )
.) *
Split* /
(/ 0
$char0 3
)3 4
;4 5
	rebelList 
. 
Add !
(! "
RebelFactory" .
.. /
CreateInstance/ =
(= >
data> B
[B C
$numC D
]D E
,E F
dataG K
[K L
$numL M
]M N
)N O
)O P
;P Q
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
throw 
new 
ServiceException .
(. /
$str/ M
,M N
exO Q
)Q R
;R S
} 
} 
return"" 
	rebelList"" 
;"" 
}## 	
}$$ 
}%% ù
KC:\Users\vcativiela\source\repos\StarWarsBackEnd\StarWarsBackEnd\Startup.cs
	namespace 	
StarWarsBackEnd
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddMvc 
( 
) 
. #
SetCompatibilityVersion 5
(5 6 
CompatibilityVersion6 J
.J K
Version_2_1K V
)V W
;W X
services 
. 
	AddScoped 
< 
IRepository *
,* +
FileRepository, :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IDataSplitter ,
,, -
RebelSplitter. ;
>; <
(< =
)= >
;> ?
services 
. 
	AddScoped 
< 
IFileWriter *
,* +

FileWriter, 6
>6 7
(7 8
)8 9
;9 :
} 	
public"" 
void"" 
	Configure"" 
("" 
IApplicationBuilder"" 1
app""2 5
,""5 6
IHostingEnvironment""7 J
env""K N
)""N O
{## 	
if$$ 
($$ 
env$$ 
.$$ 
IsDevelopment$$ !
($$! "
)$$" #
)$$# $
{%% 
app&& 
.&& %
UseDeveloperExceptionPage&& -
(&&- .
)&&. /
;&&/ 0
}'' 
else(( 
{)) 
app** 
.** 
UseHsts** 
(** 
)** 
;** 
}++ 
app-- 
.-- 
UseHttpsRedirection-- #
(--# $
)--$ %
;--% &
app.. 
... "
UseMvcWithDefaultRoute.. &
(..& '
)..' (
;..( )
}// 	
}00 
}11 
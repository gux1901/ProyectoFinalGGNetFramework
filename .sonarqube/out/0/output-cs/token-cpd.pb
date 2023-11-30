€X
eC:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\Consultas\Validaciones.cs
	namespace 	"
ProyectoFinalSeguridad
  
.  !
	Consultas! *
{ 
public 

class 
Validaciones 
{ 
public 
string 
ValidarTarjeta $
($ %
string% +

TextoPlano, 6
)6 7
{ 	
Regex 
r 
= 
new 
Regex 
(  
$str  /
)/ 0
;0 1
if 
( 
r 
. 
IsMatch 
( 

TextoPlano $
)$ %
)% &
{ 

TextoPlano 
= 

TextoPlano '
.' (
Replace( /
(/ 0

TextoPlano0 :
.: ;
	Substring; D
(D E
$numE F
,F G
$numH J
)J K
,K L
$strM \
)\ ]
;] ^
return 

TextoPlano !
;! "
} 
return 
$str )
;) *
} 	
public 
DTO 
. 
GeneradorLlaves "
ObtenerLlaves# 0
(0 1
)1 2
{ 	
DTO 
. 
GeneradorLlaves 
datos  %
=& '
new( +
DTO, /
./ 0
GeneradorLlaves0 ?
(? @
)@ A
;A B
using 
( 
Aes 
myAes 
= 
Aes "
." #
Create# )
() *
)* +
)+ ,
{   
datos"" 
."" 
Key"" 
="" 
myAes"" !
.""! "
Key""" %
;""% &
datos## 
.## 
Iv## 
=## 
myAes##  
.##  !
IV##! #
;### $
}%% 
return&& 
datos&& 
;&& 
}'' 	
public)) 
byte)) 
[)) 
])) 
EncriptacionAES256)) (
())( )
DTO))) ,
.)), -
Encriptador))- 8
encriptador))9 D
)))D E
{** 	
if,, 
(,, 
encriptador,, 
.,, 
	PlainText,, %
==,,& (
null,,) -
||,,. 0
encriptador,,1 <
.,,< =
	PlainText,,= F
.,,F G
Length,,G M
<=,,N P
$num,,Q R
),,R S
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
$str--0 ;
)--; <
;--< =
if.. 
(.. 
encriptador.. 
... 
Key.. 
==..  "
null..# '
||..( *
encriptador..+ 6
...6 7
Key..7 :
...: ;
Length..; A
<=..B D
$num..E F
)..F G
{// 
throw00 
new00 !
ArgumentNullException00 /
(00/ 0
$str000 5
)005 6
;006 7
}11 
if33 
(33 
encriptador33 
.33 
IV33 
==33 !
null33" &
||33' )
encriptador33* 5
.335 6
IV336 8
.338 9
Length339 ?
<=33@ B
$num33C D
)33D E
throw44 
new44 !
ArgumentNullException44 /
(44/ 0
$str440 4
)444 5
;445 6
byte55 
[55 
]55 
	encrypted55 
;55 
using99 
(99 
Aes99 
aesAlg99 
=99 
Aes99  #
.99# $
Create99$ *
(99* +
)99+ ,
)99, -
{:: 
aesAlg;; 
.;; 
Key;; 
=;; 
encriptador;; (
.;;( )
Key;;) ,
;;;, -
aesAlg<< 
.<< 
IV<< 
=<< 
encriptador<< '
.<<' (
IV<<( *
;<<* +
ICryptoTransform??  
	encryptor??! *
=??+ ,
aesAlg??- 3
.??3 4
CreateEncryptor??4 C
(??C D
aesAlg??D J
.??J K
Key??K N
,??N O
aesAlg??P V
.??V W
IV??W Y
)??Y Z
;??Z [
usingBB 
(BB 
MemoryStreamBB #
	msEncryptBB$ -
=BB. /
newBB0 3
MemoryStreamBB4 @
(BB@ A
)BBA B
)BBB C
{CC 
usingDD 
(DD 
CryptoStreamDD '
	csEncryptDD( 1
=DD2 3
newDD4 7
CryptoStreamDD8 D
(DDD E
	msEncryptDDE N
,DDN O
	encryptorDDP Y
,DDY Z
CryptoStreamModeDD[ k
.DDk l
WriteDDl q
)DDq r
)DDr s
{EE 
usingFF 
(FF 
StreamWriterFF +
	swEncryptFF, 5
=FF6 7
newFF8 ;
StreamWriterFF< H
(FFH I
	csEncryptFFI R
)FFR S
)FFS T
{GG 
	swEncryptII %
.II% &
WriteII& +
(II+ ,
encriptadorII, 7
.II7 8
	PlainTextII8 A
)IIA B
;IIB C
}JJ 
	encryptedKK !
=KK" #
	msEncryptKK$ -
.KK- .
ToArrayKK. 5
(KK5 6
)KK6 7
;KK7 8
}LL 
}MM 
}NN 
returnQQ 
	encryptedQQ 
;QQ 
}RR 	
[TT 	
SystemTT	 
.TT 
DiagnosticsTT 
.TT 
CodeAnalysisTT (
.TT( )
SuppressMessageTT) 8
(TT8 9
$strTT9 K
,TTK L
$str	TTM ´
,
TT´ ¨
Justification
TT≠ ∫
=
TTª º
$str
TTΩ »
)
TT» …
]
TT…  
publicUU 
stringUU !
DesencriptacionAES256UU +
(UU+ ,
DTOUU, /
.UU/ 0
DesencriptadorUU0 >
desencriptadorUU? M
)UUM N
{VV 	
ifYY 
(YY 
desencriptadorYY 
.YY 

CipherTextYY )
==YY* ,
nullYY- 1
||YY2 4
desencriptadorYY5 C
.YYC D

CipherTextYYD N
.YYN O
LengthYYO U
<=YYV X
$numYYY Z
)YYZ [
throwZZ 
newZZ !
ArgumentNullExceptionZZ /
(ZZ/ 0
$strZZ0 <
)ZZ< =
;ZZ= >
if[[ 
([[ 
desencriptador[[ 
.[[ 
Key[[ "
==[[# %
null[[& *
||[[+ -
desencriptador[[. <
.[[< =
Key[[= @
.[[@ A
Length[[A G
<=[[H J
$num[[K L
)[[L M
throw\\ 
new\\ !
ArgumentNullException\\ /
(\\/ 0
$str\\0 5
)\\5 6
;\\6 7
if]] 
(]] 
desencriptador]] 
.]] 
IV]] !
==]]" $
null]]% )
||]]* ,
desencriptador]]- ;
.]]; <
IV]]< >
.]]> ?
Length]]? E
<=]]F H
$num]]I J
)]]J K
throw^^ 
new^^ !
ArgumentNullException^^ /
(^^/ 0
$str^^0 4
)^^4 5
;^^5 6
stringbb 
	plaintextbb 
=bb 
nullbb #
;bb# $
usingff 
(ff 
Aesff 
aesAlgff 
=ff 
Aesff  #
.ff# $
Createff$ *
(ff* +
)ff+ ,
)ff, -
{gg 
aesAlghh 
.hh 
Keyhh 
=hh 
desencriptadorhh +
.hh+ ,
Keyhh, /
;hh/ 0
aesAlgii 
.ii 
IVii 
=ii 
desencriptadorii *
.ii* +
IVii+ -
;ii- .
ICryptoTransformll  
	decryptorll! *
=ll+ ,
aesAlgll- 3
.ll3 4
CreateDecryptorll4 C
(llC D
aesAlgllD J
.llJ K
KeyllK N
,llN O
aesAlgllP V
.llV W
IVllW Y
)llY Z
;llZ [
usingoo 
(oo 
MemoryStreamoo #
	msDecryptoo$ -
=oo. /
newoo0 3
MemoryStreamoo4 @
(oo@ A
desencriptadorooA O
.ooO P

CipherTextooP Z
)ooZ [
)oo[ \
{pp 
usingqq 
(qq 
CryptoStreamqq '
	csDecryptqq( 1
=qq2 3
newqq4 7
CryptoStreamqq8 D
(qqD E
	msDecryptqqE N
,qqN O
	decryptorqqP Y
,qqY Z
CryptoStreamModeqq[ k
.qqk l
Readqql p
)qqp q
)qqq r
{rr 
usingss 
(ss 
StreamReaderss +
	srDecryptss, 5
=ss6 7
newss8 ;
StreamReaderss< H
(ssH I
	csDecryptssI R
)ssR S
)ssS T
{tt 
	plaintextxx %
=xx& '
	srDecryptxx( 1
.xx1 2
	ReadToEndxx2 ;
(xx; <
)xx< =
;xx= >
}yy 
}zz 
}{{ 
}|| 
return}} 
	plaintext}} 
;}} 
}~~ 	
public 
byte 
[ 
] 
Hash 
( 
string !
CadenaTexto" -
)- .
{
ÄÄ 	
byte
ÅÅ 
[
ÅÅ 
]
ÅÅ 
	hashValue
ÅÅ 
=
ÅÅ 
null
ÅÅ #
;
ÅÅ# $
using
ÇÇ 
(
ÇÇ 
SHA256
ÇÇ 
mySHA256
ÇÇ "
=
ÇÇ# $
SHA256
ÇÇ% +
.
ÇÇ+ ,
Create
ÇÇ, 2
(
ÇÇ2 3
)
ÇÇ3 4
)
ÇÇ4 5
{
ÉÉ 
try
ÑÑ 
{
ÖÖ 
	hashValue
ÜÜ 
=
ÜÜ 
mySHA256
ÜÜ  (
.
ÜÜ( )
ComputeHash
ÜÜ) 4
(
ÜÜ4 5
Encoding
ÜÜ5 =
.
ÜÜ= >
UTF8
ÜÜ> B
.
ÜÜB C
GetBytes
ÜÜC K
(
ÜÜK L
CadenaTexto
ÜÜL W
)
ÜÜW X
)
ÜÜX Y
;
ÜÜY Z
}
àà 
catch
ââ 
(
ââ 
IOException
ââ "
e
ââ# $
)
ââ$ %
{
ää 
Console
ãã 
.
ãã 
	WriteLine
ãã %
(
ãã% &
$"
ãã& (
$str
ãã( 7
{
ãã7 8
e
ãã8 9
.
ãã9 :
Message
ãã: A
}
ããA B
"
ããB C
)
ããC D
;
ããD E
}
åå 
catch
çç 
(
çç )
UnauthorizedAccessException
çç 2
e
çç3 4
)
çç4 5
{
éé 
Console
èè 
.
èè 
	WriteLine
èè %
(
èè% &
$"
èè& (
$str
èè( :
{
èè: ;
e
èè; <
.
èè< =
Message
èè= D
}
èèD E
"
èèE F
)
èèF G
;
èèG H
}
êê 
return
íí 
	hashValue
íí  
;
íí  !
}
îî 
}
ïï 	
}
ññ 
}óó ÷
aC:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\DTO\Desencriptador.cs
	namespace 	"
ProyectoFinalSeguridad
  
.  !
DTO! $
{ 
public 

class 
Desencriptador 
{		 
public 
byte 
[ 
] 

CipherText  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
byte 
[ 
] 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
byte 
[ 
] 
IV 
{ 
get 
; 
set  #
;# $
}% &
} 
} ≥
^C:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\DTO\Encriptador.cs
	namespace 	"
ProyectoFinalSeguridad
  
.  !
DTO! $
{ 
public 

class 
Encriptador 
{		 
public 
string 
	PlainText 
{  !
get" %
;% &
set' *
;* +
}, -
public 
byte 
[ 
] 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
byte 
[ 
] 
IV 
{ 
get 
; 
set  #
;# $
}% &
} 
} û
bC:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\DTO\GeneradorLlaves.cs
	namespace 	"
ProyectoFinalSeguridad
  
.  !
DTO! $
{ 
public 

class 
GeneradorLlaves  
{		 
public 
byte 
[ 
] 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
byte 
[ 
] 
Iv 
{ 
get 
; 
set  #
;# $
}% &
} 
} ë
fC:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 1
)1 2
]2 3
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 3
)3 4
]4 5
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str D
)D E
]E F
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
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
]##) *á
_C:\Users\galopez\source\repos\ProyectoFinalSeguridad\ProyectoFinalSeguridad\WsSeguridad.asmx.cs
	namespace 	"
ProyectoFinalSeguridad
  
{		 
[ 

WebService 
( 
	Namespace 
= 
$str 1
)1 2
]2 3
[ 
WebServiceBinding 
( 

ConformsTo !
=" #
WsiProfiles$ /
./ 0
BasicProfile1_10 ?
)? @
]@ A
[ 
System 
. 
ComponentModel 
. 
ToolboxItem &
(& '
false' ,
), -
]- .
public 

class 
WsSeguridad 
: 
System %
.% &
Web& )
.) *
Services* 2
.2 3

WebService3 =
{ 
[ 	
	WebMethod	 
] 
public 
byte 
[ 
] 
	Encriptar 
(  
DTO  #
.# $
Encriptador$ /
encriptador0 ;
); <
{ 	
Validaciones 
validaciones %
=& '
new( +
Validaciones, 8
(8 9
)9 :
;: ;
return 
validaciones 
.  
EncriptacionAES256  2
(2 3
encriptador3 >
)> ?
;? @
} 	
[ 	
	WebMethod	 
] 
public 
string 
Desencriptar "
(" #
DTO# &
.& '
Desencriptador' 5
desencriptador6 D
)D E
{ 	
Validaciones 
validaciones %
=& '
new( +
Validaciones, 8
(8 9
)9 :
;: ;
return 
validaciones 
.  !
DesencriptacionAES256  5
(5 6
desencriptador6 D
)D E
;E F
}   	
[!! 	
	WebMethod!!	 
]!! 
public"" 
byte"" 
["" 
]"" 
Hashing"" 
("" 
string"" $
CadenaTexto""% 0
)""0 1
{## 	
Validaciones$$ 
validaciones$$ %
=$$& '
new$$( +
Validaciones$$, 8
($$8 9
)$$9 :
;$$: ;
return%% 
validaciones%% 
.%%  
Hash%%  $
(%%$ %
CadenaTexto%%% 0
)%%0 1
;%%1 2
}&& 	
['' 	
	WebMethod''	 
]'' 
public(( 
DTO(( 
.(( 
GeneradorLlaves(( "
ObtenerLlaves((# 0
(((0 1
)((1 2
{)) 	
Validaciones** 
validaciones** %
=**& '
new**( +
Validaciones**, 8
(**8 9
)**9 :
;**: ;
return++ 
validaciones++ 
.++  
ObtenerLlaves++  -
(++- .
)++. /
;++/ 0
},, 	
[-- 	
	WebMethod--	 
]-- 
public.. 
string.. 
Tarjetas.. 
(.. 
string.. %
Tarjeta..& -
)..- .
{// 	
Validaciones00 
validaciones00 %
=00& '
new00( +
Validaciones00, 8
(008 9
)009 :
;00: ;
return11 
validaciones11 
.11  
ValidarTarjeta11  .
(11. /
Tarjeta11/ 6
)116 7
;117 8
}22 	
}33 
}44 
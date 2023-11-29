÷
QC:\Users\galopez\source\repos\ProyectoFinalSeguridad\InterfazSeguridad\Program.cs
	namespace 	
InterfazSeguridad
 
{ 
internal		 
static		 
class		 
Program		 !
{

 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
Application 
. 
Run 
( 
new 
ValidarTarjeta  .
(. /
)/ 0
)0 1
;1 2
} 	
} 
} Œ
aC:\Users\galopez\source\repos\ProyectoFinalSeguridad\InterfazSeguridad\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str ,
), -
]- .
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
$str .
). /
]/ 0
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
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *û5
XC:\Users\galopez\source\repos\ProyectoFinalSeguridad\InterfazSeguridad\ValidarTarjeta.cs
	namespace 	
InterfazSeguridad
 
{ 
public 

partial 
class 
ValidarTarjeta '
:( )
Form* .
{ 
private 
static 
byte 
[ 
] 
generateKey )
;) *
private 
static 
byte 
[ 
] 

generateIv (
;( )
private 
static 
string 
tarjeta %
;% &
private 
static 
byte 
[ 
] 
encryptText )
;) *
private 
static 
byte 
[ 
] 
hash "
;" #
private 
static 
byte 
[ 
] 
hashDesencriptado /
;/ 0
private 
static 
string 
decryptText )
;) *
public 
static 
readonly 
wsSeguridad *
.* +
WsSeguridad+ 6
ws7 9
=: ;
new< ?
wsSeguridad@ K
.K L
WsSeguridadL W
(W X
)X Y
;Y Z
public 
ValidarTarjeta 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
btnProcesar_Click &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
tarjeta   
=   
Regex   
.   
Replace   #
(  # $

txbTarjeta  $ .
.  . /
Text  / 3
,  3 4
$str  5 N
,  N O
$str  P R
)  R S
;  S T
lblProcesando!! 
.!! 
Text!! 
=!!  
$str!!! 4
+!!4 5
tarjeta!!6 =
;!!= >
string## 
textoSanitizado## "
=### $
ws##% '
.##' (
Tarjetas##( 0
(##0 1
tarjeta##1 8
)##8 9
;##9 :
lblProcesando$$ 
.$$ 
Text$$ 
+=$$ !
$str$$" 9
+$$9 :
textoSanitizado$$; J
;$$J K
if%% 
(%% 
!%% 
textoSanitizado%%  
.%%  !
Contains%%! )
(%%) *
$str%%* @
)%%@ A
)%%A B
{&& 
if'' 
('' 

generateIv'' 
=='' !
null''" &
&&''' )
generateKey''* 5
==''6 8
null''9 =
)''= >
{(( 
GeneradorLlaves)) #
llaves))$ *
=))+ ,
new))- 0
GeneradorLlaves))1 @
())@ A
)))A B
;))B C
llaves** 
=** 
ws** 
.**  
ObtenerLlaves**  -
(**- .
)**. /
;**/ 0
generateKey++ 
=++  !
llaves++" (
.++( )
Key++) ,
;++, -

generateIv,, 
=,,  
llaves,,! '
.,,' (
Iv,,( *
;,,* +
}-- 
lblProcesando.. 
... 
Text.. "
+=..# %
$str..& 1
+..2 3
Convert..4 ;
...; <
ToBase64String..< J
(..J K
generateKey..K V
)..V W
;..W X
lblProcesando// 
.// 
Text// "
+=//# %
$str//& .
+/// 0
Convert//1 8
.//8 9
ToBase64String//9 G
(//G H

generateIv//H R
)//R S
;//S T
hash00 
=00 
ws00 
.00 
Hashing00 !
(00! "
tarjeta00" )
)00) *
;00* +
lblProcesando11 
.11 
Text11 "
+=11# %
$str11& 0
+111 2
Convert113 :
.11: ;
ToBase64String11; I
(11I J
hash11J N
)11N O
;11O P
wsSeguridad22 
.22 
Encriptador22 '
objetoEncriptador22( 9
=22: ;
new22< ?
Encriptador22@ K
(22K L
)22L M
;22M N
objetoEncriptador44 !
.44! "
Key44" %
=44& '
generateKey44( 3
;443 4
objetoEncriptador55 !
.55! "
IV55" $
=55% &

generateIv55' 1
;551 2
objetoEncriptador66 !
.66! "
	PlainText66" +
=66, -
tarjeta66. 5
;665 6
encryptText77 
=77 
ws77  
.77  !
	Encriptar77! *
(77* +
objetoEncriptador77+ <
)77< =
;77= >
lblProcesando99 
.99 
Text99 "
+=99# %
$str99& ;
+99< =
Convert99> E
.99E F
ToBase64String99F T
(99T U
encryptText99U `
)99` a
;99a b
Desencriptador;; 
desencriptador;; -
=;;. /
new;;0 3
Desencriptador;;4 B
(;;B C
);;C D
;;;D E
desencriptador<< 
.<< 
Key<< "
=<<# $
generateKey<<% 0
;<<0 1
desencriptador== 
.== 
IV== !
===" #

generateIv==$ .
;==. /
desencriptador>> 
.>> 

CipherText>> )
=>>* +
encryptText>>, 7
;>>7 8
decryptText?? 
=?? 
ws??  
.??  !
Desencriptar??! -
(??- .
desencriptador??. <
)??< =
;??= >
lblProcesandoAA 
.AA 
TextAA "
+=AA# %
$strAA& >
+AA? @
decryptTextAAA L
;AAL M
hashDesencriptadoCC !
=CC" #
wsCC$ &
.CC& '
HashingCC' .
(CC. /
decryptTextCC/ :
)CC: ;
;CC; <
lblProcesandoDD 
.DD 
TextDD "
+=DD# %
$strDD& H
+DDI J
decryptTextDDK V
;DDV W
ifFF 
(FF 
ConvertFF 
.FF 
ToBase64StringFF *
(FF* +
hashFF+ /
)FF/ 0
==FF1 3
ConvertFF4 ;
.FF; <
ToBase64StringFF< J
(FFJ K
hashDesencriptadoFFK \
)FF\ ]
)FF] ^
lblProcesandoFF_ l
.FFl m
TextFFm q
+=FFr t
$str	FFu ­
;
FF­ ®
}GG 
}MM 	
}NN 
}OO 
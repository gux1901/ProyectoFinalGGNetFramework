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
]$$) *¹9
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
private 
byte 
[ 
] 
generateKey "
;" #
private 
byte 
[ 
] 

generateIv !
;! "
private 
string 
tarjeta 
; 
private 
string 
textoSanitizado &
;& '
private 
byte 
[ 
] 
encryptText "
;" #
private 
byte 
[ 
] 
hash 
; 
private 
byte 
[ 
] 
hashDesencriptado (
;( )
private 
string 
decryptText "
;" #
public 
readonly 
wsSeguridad #
.# $
WsSeguridad$ /
ws0 2
=3 4
new5 8
wsSeguridad9 D
.D E
WsSeguridadE P
(P Q
)Q R
;R S
public 
ValidarTarjeta 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
btnProcesar_Click &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{   	
tarjeta!! 
=!! 
Regex!! 
.!! 
Replace!! #
(!!# $

txbTarjeta!!$ .
.!!. /
Text!!/ 3
,!!3 4
$str!!5 N
,!!N O
$str!!P R
)!!R S
;!!S T
lblProcesando"" 
."" 
Text"" 
=""  
$str""! 4
+""4 5
tarjeta""6 =
;""= >
textoSanitizado$$ 
=$$ 
ws$$  
.$$  !
Tarjetas$$! )
($$) *
tarjeta$$* 1
)$$1 2
;$$2 3

txbTarjeta%% 
.%% 
Text%% 
=%% 
textoSanitizado%% -
;%%- .
lblProcesando&& 
.&& 
Text&& 
+=&& !
$str&&" 9
+&&9 :
textoSanitizado&&; J
;&&J K
if'' 
('' 
!'' 
textoSanitizado''  
.''  !
Contains''! )
('') *
$str''* @
)''@ A
)''A B
{(( 
if)) 
()) 

generateIv)) 
==)) !
null))" &
&&))' )
generateKey))* 5
==))6 8
null))9 =
)))= >
{** 
_++ 
=++ 
new++ 
GeneradorLlaves++ +
(+++ ,
)++, -
;++- .
GeneradorLlaves,, #
llaves,,$ *
=,,+ ,
ws,,- /
.,,/ 0
ObtenerLlaves,,0 =
(,,= >
),,> ?
;,,? @
generateKey-- 
=--  !
llaves--" (
.--( )
Key--) ,
;--, -

generateIv.. 
=..  
llaves..! '
...' (
Iv..( *
;..* +
}// 
lblProcesando00 
.00 
Text00 "
+=00# %
$str00& 1
+002 3
Convert004 ;
.00; <
ToBase64String00< J
(00J K
generateKey00K V
)00V W
;00W X
lblProcesando11 
.11 
Text11 "
+=11# %
$str11& .
+11/ 0
Convert111 8
.118 9
ToBase64String119 G
(11G H

generateIv11H R
)11R S
;11S T
hash22 
=22 
ws22 
.22 
Hashing22 !
(22! "
tarjeta22" )
)22) *
;22* +
lblProcesando33 
.33 
Text33 "
+=33# %
$str33& 0
+331 2
Convert333 :
.33: ;
ToBase64String33; I
(33I J
hash33J N
)33N O
;33O P
wsSeguridad44 
.44 
Encriptador44 '
objetoEncriptador44( 9
=44: ;
new44< ?
Encriptador44@ K
(44K L
)44L M
;44M N
objetoEncriptador66 !
.66! "
Key66" %
=66& '
generateKey66( 3
;663 4
objetoEncriptador77 !
.77! "
IV77" $
=77% &

generateIv77' 1
;771 2
objetoEncriptador88 !
.88! "
	PlainText88" +
=88, -
tarjeta88. 5
;885 6
encryptText99 
=99 
ws99  
.99  !
	Encriptar99! *
(99* +
objetoEncriptador99+ <
)99< =
;99= >
lblProcesando;; 
.;; 
Text;; "
+=;;# %
$str;;& ;
+;;< =
Convert;;> E
.;;E F
ToBase64String;;F T
(;;T U
encryptText;;U `
);;` a
;;;a b
Desencriptador== 
desencriptador== -
===. /
new==0 3
Desencriptador==4 B
(==B C
)==C D
;==D E
desencriptador>> 
.>> 
Key>> "
=>># $
generateKey>>% 0
;>>0 1
desencriptador?? 
.?? 
IV?? !
=??" #

generateIv??$ .
;??. /
desencriptador@@ 
.@@ 

CipherText@@ )
=@@* +
encryptText@@, 7
;@@7 8
decryptTextAA 
=AA 
wsAA  
.AA  !
DesencriptarAA! -
(AA- .
desencriptadorAA. <
)AA< =
;AA= >
lblProcesandoCC 
.CC 
TextCC "
+=CC# %
$strCC& >
+CC? @
decryptTextCCA L
;CCL M
hashDesencriptadoEE !
=EE" #
wsEE$ &
.EE& '
HashingEE' .
(EE. /
decryptTextEE/ :
)EE: ;
;EE; <
lblProcesandoFF 
.FF 
TextFF "
+=FF# %
$strFF& H
+FFI J
ConvertFFK R
.FFR S
ToBase64StringFFS a
(FFa b
hashDesencriptadoFFb s
)FFs t
;FFt u
ifHH 
(HH 
ConvertHH 
.HH 
ToBase64StringHH *
(HH* +
hashHH+ /
)HH/ 0
==HH1 3
ConvertHH4 ;
.HH; <
ToBase64StringHH< J
(HHJ K
hashDesencriptadoHHK \
)HH\ ]
)HH] ^
lblProcesandoHH_ l
.HHl m
TextHHm q
+=HHr t
$str	HHu ­
;
HH­ ®
}II 
}JJ 	
privateLL 
voidLL 
txbTarjeta_EnterLL %
(LL% &
objectLL& ,
senderLL- 3
,LL3 4
	EventArgsLL5 >
eLL? @
)LL@ A
{MM 	

txbTarjetaNN 
.NN 
TextNN 
=NN  !
tarjetaNN" )
;NN) *
}OO 	
}PP 
}QQ 
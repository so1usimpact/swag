{

   Read the character visible on the screen


               浜様様様様様様様様様様様様様様様様様様様融
               �                                        紺
               �          AVONTURE CHRISTOPHE           紺
               �              AVC SOFTWARE              紺
               �     BOULEVARD EDMOND MACHTENS 157/53   紺
               �           B-1080 BRUXELLES             紺
               �              BELGIQUE                  紺
               �                                        紺
               藩様様様様様様様様様様様様様様様様様様様夕�
               旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭旭�

}


Procedure ReadCar (X, Y : Word; Var Attr : Byte; Var Carac : Char);

Var
   Car      : ^char;
   Attribut : ^Byte;
   AdressP  : Word Absolute $0040:$004E; { Address of the screen page }

Begin

   New (car);  { Allocate memory for the character }

   { Get the character from the screen video memory -for the active video
     page- }

   Car := Ptr($B800,(Y*160 + X Shl 1 + AdressP Shl 12));

   Carac := car^;

   New (attribut); { Allocate memory for the character color attribute }

   { Get the color attribute of the character -for the active video page- }

   Attribut := Ptr($B800,(Y*160 + X Shl 1 + 1 + AdressP Shl 12));

   Attr := attribut^;

End;

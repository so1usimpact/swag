{

   Change the cursor aspect in text mode


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

Type
   CursorType = (cNormal, cInsert);

PROCEDURE Set_Cursor (cType : CursorType); ASSEMBLER;

ASM

    Cmp  cType, cNormal
    Je   @Normal

    Mov  Ah, 01h
    Mov  Cl, 15h
    Mov  Ch, 01h

    Jmp  @Call

@Normal:

    Mov  Ah, 01h
    Mov  Cx, 0607h

@Call:

    Int  10h

END;

Begin

   { Set the cursor normal }

   Set_Cursor (cNormal);

   { Set the cursor like a square -like used in an insert mode- }

   Set_Cursor (cInsert);

End;

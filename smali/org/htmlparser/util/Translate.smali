.class public Lorg/htmlparser/util/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# static fields
.field protected static final BREAKPOINT:I = 0x100

.field public static DECODE_LINE_BY_LINE:Z

.field public static ENCODE_HEXADECIMAL:Z

.field protected static final mCharacterList:[Lorg/htmlparser/util/CharacterReference;

.field protected static final mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0x3e

    const/16 v13, 0x3c

    const/16 v12, 0x26

    const/16 v11, 0x22

    const/4 v10, 0x0

    .line 147
    sput-boolean v10, Lorg/htmlparser/util/Translate;->DECODE_LINE_BY_LINE:Z

    .line 154
    sput-boolean v10, Lorg/htmlparser/util/Translate;->ENCODE_HEXADECIMAL:Z

    .line 160
    const/16 v6, 0xfc

    new-array v6, v6, [Lorg/htmlparser/util/CharacterReference;

    new-instance v7, Lorg/htmlparser/util/CharacterReference;

    const-string v8, "nbsp"

    const/16 v9, 0xa0

    invoke-direct {v7, v8, v9}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v10

    const/4 v7, 0x1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "iexcl"

    const/16 v10, 0xa1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "cent"

    const/16 v10, 0xa2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "pound"

    const/16 v10, 0xa3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "curren"

    const/16 v10, 0xa4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "yen"

    const/16 v10, 0xa5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "brvbar"

    const/16 v10, 0xa6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sect"

    const/16 v10, 0xa7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "uml"

    const/16 v10, 0xa8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "copy"

    const/16 v10, 0xa9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ordf"

    const/16 v10, 0xaa

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "laquo"

    const/16 v10, 0xab

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "not"

    const/16 v10, 0xac

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "shy"

    const/16 v10, 0xad

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "reg"

    const/16 v10, 0xae

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "macr"

    const/16 v10, 0xaf

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x10

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "deg"

    const/16 v10, 0xb0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x11

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "plusmn"

    const/16 v10, 0xb1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x12

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sup2"

    const/16 v10, 0xb2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x13

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sup3"

    const/16 v10, 0xb3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x14

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "acute"

    const/16 v10, 0xb4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x15

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "micro"

    const/16 v10, 0xb5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x16

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "para"

    const/16 v10, 0xb6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x17

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "middot"

    const/16 v10, 0xb7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x18

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "cedil"

    const/16 v10, 0xb8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x19

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sup1"

    const/16 v10, 0xb9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ordm"

    const/16 v10, 0xba

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "raquo"

    const/16 v10, 0xbb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "frac14"

    const/16 v10, 0xbc

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "frac12"

    const/16 v10, 0xbd

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "frac34"

    const/16 v10, 0xbe

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x1f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "iquest"

    const/16 v10, 0xbf

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x20

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Agrave"

    const/16 v10, 0xc0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x21

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Aacute"

    const/16 v10, 0xc1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    new-instance v7, Lorg/htmlparser/util/CharacterReference;

    const-string v8, "Acirc"

    const/16 v9, 0xc2

    invoke-direct {v7, v8, v9}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v11

    const/16 v7, 0x23

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Atilde"

    const/16 v10, 0xc3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x24

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Auml"

    const/16 v10, 0xc4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x25

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Aring"

    const/16 v10, 0xc5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    new-instance v7, Lorg/htmlparser/util/CharacterReference;

    const-string v8, "AElig"

    const/16 v9, 0xc6

    invoke-direct {v7, v8, v9}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v12

    const/16 v7, 0x27

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ccedil"

    const/16 v10, 0xc7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x28

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Egrave"

    const/16 v10, 0xc8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x29

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Eacute"

    const/16 v10, 0xc9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ecirc"

    const/16 v10, 0xca

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Euml"

    const/16 v10, 0xcb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Igrave"

    const/16 v10, 0xcc

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Iacute"

    const/16 v10, 0xcd

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Icirc"

    const/16 v10, 0xce

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x2f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Iuml"

    const/16 v10, 0xcf

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x30

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ETH"

    const/16 v10, 0xd0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x31

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ntilde"

    const/16 v10, 0xd1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x32

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ograve"

    const/16 v10, 0xd2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x33

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Oacute"

    const/16 v10, 0xd3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x34

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ocirc"

    const/16 v10, 0xd4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x35

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Otilde"

    const/16 v10, 0xd5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x36

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ouml"

    const/16 v10, 0xd6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x37

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "times"

    const/16 v10, 0xd7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x38

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Oslash"

    const/16 v10, 0xd8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x39

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ugrave"

    const/16 v10, 0xd9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x3a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Uacute"

    const/16 v10, 0xda

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x3b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Ucirc"

    const/16 v10, 0xdb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    new-instance v7, Lorg/htmlparser/util/CharacterReference;

    const-string v8, "Uuml"

    const/16 v9, 0xdc

    invoke-direct {v7, v8, v9}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v13

    const/16 v7, 0x3d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Yacute"

    const/16 v10, 0xdd

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    new-instance v7, Lorg/htmlparser/util/CharacterReference;

    const-string v8, "THORN"

    const/16 v9, 0xde

    invoke-direct {v7, v8, v9}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v7, v6, v14

    const/16 v7, 0x3f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "szlig"

    const/16 v10, 0xdf

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x40

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "agrave"

    const/16 v10, 0xe0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x41

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "aacute"

    const/16 v10, 0xe1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x42

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "acirc"

    const/16 v10, 0xe2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x43

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "atilde"

    const/16 v10, 0xe3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x44

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "auml"

    const/16 v10, 0xe4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x45

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "aring"

    const/16 v10, 0xe5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x46

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "aelig"

    const/16 v10, 0xe6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x47

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ccedil"

    const/16 v10, 0xe7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x48

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "egrave"

    const/16 v10, 0xe8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x49

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "eacute"

    const/16 v10, 0xe9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ecirc"

    const/16 v10, 0xea

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "euml"

    const/16 v10, 0xeb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "igrave"

    const/16 v10, 0xec

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "iacute"

    const/16 v10, 0xed

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "icirc"

    const/16 v10, 0xee

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x4f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "iuml"

    const/16 v10, 0xef

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x50

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "eth"

    const/16 v10, 0xf0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x51

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ntilde"

    const/16 v10, 0xf1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x52

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ograve"

    const/16 v10, 0xf2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x53

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "oacute"

    const/16 v10, 0xf3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x54

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ocirc"

    const/16 v10, 0xf4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x55

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "otilde"

    const/16 v10, 0xf5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x56

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ouml"

    const/16 v10, 0xf6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x57

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "divide"

    const/16 v10, 0xf7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x58

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "oslash"

    const/16 v10, 0xf8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x59

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ugrave"

    const/16 v10, 0xf9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "uacute"

    const/16 v10, 0xfa

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ucirc"

    const/16 v10, 0xfb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "uuml"

    const/16 v10, 0xfc

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "yacute"

    const/16 v10, 0xfd

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "thorn"

    const/16 v10, 0xfe

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x5f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "yuml"

    const/16 v10, 0xff

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x60

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "fnof"

    const/16 v10, 0x192

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x61

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Alpha"

    const/16 v10, 0x391

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x62

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Beta"

    const/16 v10, 0x392

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x63

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Gamma"

    const/16 v10, 0x393

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x64

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Delta"

    const/16 v10, 0x394

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x65

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Epsilon"

    const/16 v10, 0x395

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x66

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Zeta"

    const/16 v10, 0x396

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x67

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Eta"

    const/16 v10, 0x397

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x68

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Theta"

    const/16 v10, 0x398

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x69

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Iota"

    const/16 v10, 0x399

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Kappa"

    const/16 v10, 0x39a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Lambda"

    const/16 v10, 0x39b

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Mu"

    const/16 v10, 0x39c

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Nu"

    const/16 v10, 0x39d

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Xi"

    const/16 v10, 0x39e

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x6f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Omicron"

    const/16 v10, 0x39f

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x70

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Pi"

    const/16 v10, 0x3a0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x71

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Rho"

    const/16 v10, 0x3a1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x72

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Sigma"

    const/16 v10, 0x3a3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x73

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Tau"

    const/16 v10, 0x3a4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x74

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Upsilon"

    const/16 v10, 0x3a5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x75

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Phi"

    const/16 v10, 0x3a6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x76

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Chi"

    const/16 v10, 0x3a7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x77

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Psi"

    const/16 v10, 0x3a8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x78

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Omega"

    const/16 v10, 0x3a9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x79

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "alpha"

    const/16 v10, 0x3b1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "beta"

    const/16 v10, 0x3b2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "gamma"

    const/16 v10, 0x3b3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "delta"

    const/16 v10, 0x3b4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "epsilon"

    const/16 v10, 0x3b5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "zeta"

    const/16 v10, 0x3b6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x7f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "eta"

    const/16 v10, 0x3b7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x80

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "theta"

    const/16 v10, 0x3b8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x81

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "iota"

    const/16 v10, 0x3b9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x82

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "kappa"

    const/16 v10, 0x3ba

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x83

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lambda"

    const/16 v10, 0x3bb

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x84

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "mu"

    const/16 v10, 0x3bc

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x85

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "nu"

    const/16 v10, 0x3bd

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x86

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "xi"

    const/16 v10, 0x3be

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x87

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "omicron"

    const/16 v10, 0x3bf

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x88

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "pi"

    const/16 v10, 0x3c0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x89

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rho"

    const/16 v10, 0x3c1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sigmaf"

    const/16 v10, 0x3c2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sigma"

    const/16 v10, 0x3c3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "tau"

    const/16 v10, 0x3c4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "upsilon"

    const/16 v10, 0x3c5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "phi"

    const/16 v10, 0x3c6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x8f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "chi"

    const/16 v10, 0x3c7

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x90

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "psi"

    const/16 v10, 0x3c8

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x91

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "omega"

    const/16 v10, 0x3c9

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x92

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "thetasym"

    const/16 v10, 0x3d1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x93

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "upsih"

    const/16 v10, 0x3d2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x94

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "piv"

    const/16 v10, 0x3d6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x95

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "bull"

    const/16 v10, 0x2022

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x96

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "hellip"

    const/16 v10, 0x2026

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x97

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "prime"

    const/16 v10, 0x2032

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x98

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Prime"

    const/16 v10, 0x2033

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x99

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "oline"

    const/16 v10, 0x203e

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9a

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "frasl"

    const/16 v10, 0x2044

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9b

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "weierp"

    const/16 v10, 0x2118

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9c

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "image"

    const/16 v10, 0x2111

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9d

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "real"

    const/16 v10, 0x211c

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9e

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "trade"

    const/16 v10, 0x2122

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0x9f

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "alefsym"

    const/16 v10, 0x2135

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "larr"

    const/16 v10, 0x2190

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "uarr"

    const/16 v10, 0x2191

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rarr"

    const/16 v10, 0x2192

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "darr"

    const/16 v10, 0x2193

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "harr"

    const/16 v10, 0x2194

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "crarr"

    const/16 v10, 0x21b5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lArr"

    const/16 v10, 0x21d0

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "uArr"

    const/16 v10, 0x21d1

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rArr"

    const/16 v10, 0x21d2

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xa9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "dArr"

    const/16 v10, 0x21d3

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xaa

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "hArr"

    const/16 v10, 0x21d4

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xab

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "forall"

    const/16 v10, 0x2200

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xac

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "part"

    const/16 v10, 0x2202

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xad

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "exist"

    const/16 v10, 0x2203

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xae

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "empty"

    const/16 v10, 0x2205

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xaf

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "nabla"

    const/16 v10, 0x2207

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "isin"

    const/16 v10, 0x2208

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "notin"

    const/16 v10, 0x2209

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ni"

    const/16 v10, 0x220b

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "prod"

    const/16 v10, 0x220f

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sum"

    const/16 v10, 0x2211

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "minus"

    const/16 v10, 0x2212

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lowast"

    const/16 v10, 0x2217

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "radic"

    const/16 v10, 0x221a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "prop"

    const/16 v10, 0x221d

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xb9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "infin"

    const/16 v10, 0x221e

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xba

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ang"

    const/16 v10, 0x2220

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xbb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "and"

    const/16 v10, 0x2227

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xbc

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "or"

    const/16 v10, 0x2228

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xbd

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "cap"

    const/16 v10, 0x2229

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xbe

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "cup"

    const/16 v10, 0x222a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xbf

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "int"

    const/16 v10, 0x222b

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "there4"

    const/16 v10, 0x2234

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sim"

    const/16 v10, 0x223c

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "cong"

    const/16 v10, 0x2245

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "asymp"

    const/16 v10, 0x2248

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ne"

    const/16 v10, 0x2260

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "equiv"

    const/16 v10, 0x2261

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "le"

    const/16 v10, 0x2264

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ge"

    const/16 v10, 0x2265

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sub"

    const/16 v10, 0x2282

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xc9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sup"

    const/16 v10, 0x2283

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xca

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "nsub"

    const/16 v10, 0x2284

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xcb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sube"

    const/16 v10, 0x2286

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xcc

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "supe"

    const/16 v10, 0x2287

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xcd

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "oplus"

    const/16 v10, 0x2295

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xce

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "otimes"

    const/16 v10, 0x2297

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xcf

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "perp"

    const/16 v10, 0x22a5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sdot"

    const/16 v10, 0x22c5

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lceil"

    const/16 v10, 0x2308

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rceil"

    const/16 v10, 0x2309

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lfloor"

    const/16 v10, 0x230a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rfloor"

    const/16 v10, 0x230b

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lang"

    const/16 v10, 0x2329

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rang"

    const/16 v10, 0x232a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "loz"

    const/16 v10, 0x25ca

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "spades"

    const/16 v10, 0x2660

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xd9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "clubs"

    const/16 v10, 0x2663

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xda

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "hearts"

    const/16 v10, 0x2665

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xdb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "diams"

    const/16 v10, 0x2666

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xdc

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "quot"

    invoke-direct {v8, v9, v11}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xdd

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "amp"

    invoke-direct {v8, v9, v12}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xde

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lt"

    invoke-direct {v8, v9, v13}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xdf

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "gt"

    invoke-direct {v8, v9, v14}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "OElig"

    const/16 v10, 0x152

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "oelig"

    const/16 v10, 0x153

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Scaron"

    const/16 v10, 0x160

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "scaron"

    const/16 v10, 0x161

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Yuml"

    const/16 v10, 0x178

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "circ"

    const/16 v10, 0x2c6

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "tilde"

    const/16 v10, 0x2dc

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ensp"

    const/16 v10, 0x2002

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "emsp"

    const/16 v10, 0x2003

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xe9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "thinsp"

    const/16 v10, 0x2009

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xea

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "zwnj"

    const/16 v10, 0x200c

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xeb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "zwj"

    const/16 v10, 0x200d

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xec

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lrm"

    const/16 v10, 0x200e

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xed

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rlm"

    const/16 v10, 0x200f

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xee

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ndash"

    const/16 v10, 0x2013

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xef

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "mdash"

    const/16 v10, 0x2014

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf0

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lsquo"

    const/16 v10, 0x2018

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf1

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rsquo"

    const/16 v10, 0x2019

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf2

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "sbquo"

    const/16 v10, 0x201a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf3

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "ldquo"

    const/16 v10, 0x201c

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf4

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rdquo"

    const/16 v10, 0x201d

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf5

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "bdquo"

    const/16 v10, 0x201e

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf6

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "dagger"

    const/16 v10, 0x2020

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf7

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "Dagger"

    const/16 v10, 0x2021

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf8

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "permil"

    const/16 v10, 0x2030

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xf9

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "lsaquo"

    const/16 v10, 0x2039

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xfa

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "rsaquo"

    const/16 v10, 0x203a

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    const/16 v7, 0xfb

    new-instance v8, Lorg/htmlparser/util/CharacterReference;

    const-string v9, "euro"

    const/16 v10, 0x20ac

    invoke-direct {v8, v9, v10}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    aput-object v8, v6, v7

    sput-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 521
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v6

    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    .line 522
    add-int/lit8 v2, v2, 0x1

    .line 520
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    array-length v6, v6

    add-int/lit16 v6, v6, 0x100

    sub-int/2addr v6, v2

    new-array v6, v6, [Lorg/htmlparser/util/CharacterReference;

    sput-object v6, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    .line 525
    const/16 v2, 0x100

    .line 526
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 528
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    aget-object v3, v6, v1

    .line 529
    .local v3, item:Lorg/htmlparser/util/CharacterReference;
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v0

    .line 530
    .local v0, character:I
    const/16 v6, 0x100

    if-ge v0, v6, :cond_2

    .line 531
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aput-object v3, v6, v0

    .line 526
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :cond_2
    const/16 v4, 0x100

    .line 536
    .local v4, x:I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 537
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 541
    :cond_3
    add-int/lit8 v5, v2, -0x1

    .line 542
    .local v5, y:I
    :goto_4
    if-lt v5, v4, :cond_5

    .line 544
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aget-object v8, v8, v5

    aput-object v8, v6, v7

    .line 545
    add-int/lit8 v5, v5, -0x1

    .line 546
    goto :goto_4

    .line 540
    .end local v5           #y:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 547
    .restart local v5       #y:I
    :cond_5
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aput-object v3, v6, v4

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 552
    .end local v0           #character:I
    .end local v3           #item:Lorg/htmlparser/util/CharacterReference;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_6
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    invoke-static {v6}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Lorg/htmlparser/util/sort/Ordered;)V

    .line 553
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "string"

    .prologue
    .line 750
    const/16 v17, -0x1

    const/16 v18, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, amp:I
    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 751
    move-object/from16 v15, p0

    .line 900
    .local v15, ret:Ljava/lang/String;
    :goto_0
    return-object v15

    .line 754
    .end local v15           #ret:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 755
    .local v11, key:Lorg/htmlparser/util/CharacterReferenceEx;
    const/4 v8, 0x0

    .line 756
    .local v8, index:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 757
    .local v12, length:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v4, buffer:Ljava/lang/StringBuffer;
    move v9, v8

    .line 762
    .end local v8           #index:I
    .local v9, index:I
    :goto_1
    if-ge v9, v2, :cond_1

    .line 763
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    goto :goto_1

    .line 765
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .line 766
    .end local v9           #index:I
    .restart local v8       #index:I
    if-ge v8, v12, :cond_12

    .line 768
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 769
    .local v5, character:C
    const/16 v17, 0x23

    move/from16 v0, v17

    if-ne v0, v5, :cond_8

    .line 772
    add-int/lit8 v8, v8, 0x1

    .line 773
    const/4 v13, 0x0

    .line 774
    .local v13, number:I
    const/4 v14, 0x0

    .line 775
    .local v14, radix:I
    move v7, v8

    .line 776
    .local v7, i:I
    const/4 v6, 0x0

    .line 777
    .local v6, done:Z
    :cond_2
    :goto_2
    if-ge v7, v12, :cond_7

    if-nez v6, :cond_7

    .line 779
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 780
    sparse-switch v5, :sswitch_data_0

    .line 830
    const/4 v6, 0x1

    .line 833
    :goto_3
    if-nez v6, :cond_2

    .line 834
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 792
    :sswitch_0
    if-nez v14, :cond_3

    .line 793
    const/16 v14, 0xa

    .line 794
    :cond_3
    mul-int v17, v13, v14

    add-int/lit8 v18, v5, -0x30

    add-int v13, v17, v18

    .line 795
    goto :goto_3

    .line 802
    :sswitch_1
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ne v0, v14, :cond_4

    .line 803
    mul-int v17, v13, v14

    add-int/lit8 v18, v5, -0x41

    add-int/lit8 v18, v18, 0xa

    add-int v13, v17, v18

    goto :goto_3

    .line 805
    :cond_4
    const/4 v6, 0x1

    .line 806
    goto :goto_3

    .line 813
    :sswitch_2
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ne v0, v14, :cond_5

    .line 814
    mul-int v17, v13, v14

    add-int/lit8 v18, v5, -0x61

    add-int/lit8 v18, v18, 0xa

    add-int v13, v17, v18

    goto :goto_3

    .line 816
    :cond_5
    const/4 v6, 0x1

    .line 817
    goto :goto_3

    .line 820
    :sswitch_3
    if-nez v14, :cond_6

    .line 821
    const/16 v14, 0x10

    goto :goto_3

    .line 823
    :cond_6
    const/4 v6, 0x1

    .line 824
    goto :goto_3

    .line 826
    :sswitch_4
    const/4 v6, 0x1

    .line 827
    add-int/lit8 v7, v7, 0x1

    .line 828
    goto :goto_3

    .line 836
    :cond_7
    if-eqz v13, :cond_12

    .line 838
    int-to-char v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 839
    move v8, v7

    .line 840
    move v2, v8

    move v3, v2

    .line 889
    .end local v2           #amp:I
    .end local v5           #character:C
    .end local v6           #done:Z
    .end local v7           #i:I
    .end local v13           #number:I
    .end local v14           #radix:I
    .local v3, amp:I
    :goto_4
    if-ge v3, v8, :cond_e

    .line 890
    add-int/lit8 v2, v3, 0x1

    .end local v3           #amp:I
    .restart local v2       #amp:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    .end local v2           #amp:I
    .restart local v3       #amp:I
    goto :goto_4

    .line 844
    .end local v3           #amp:I
    .restart local v2       #amp:I
    .restart local v5       #character:C
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 847
    add-int/lit8 v7, v8, 0x1

    .line 848
    .restart local v7       #i:I
    const/4 v6, 0x0

    .line 849
    .restart local v6       #done:Z
    move/from16 v16, v12

    .line 850
    .local v16, semi:I
    :goto_5
    if-ge v7, v12, :cond_b

    if-nez v6, :cond_b

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 853
    const/16 v17, 0x3b

    move/from16 v0, v17

    if-ne v0, v5, :cond_9

    .line 855
    const/4 v6, 0x1

    .line 856
    move/from16 v16, v7

    .line 857
    add-int/lit8 v7, v7, 0x1

    .line 858
    goto :goto_5

    .line 859
    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 860
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 863
    :cond_a
    const/4 v6, 0x1

    .line 864
    move/from16 v16, v7

    .line 866
    goto :goto_5

    .line 868
    :cond_b
    if-nez v11, :cond_c

    .line 869
    new-instance v11, Lorg/htmlparser/util/CharacterReferenceEx;

    .end local v11           #key:Lorg/htmlparser/util/CharacterReferenceEx;
    invoke-direct {v11}, Lorg/htmlparser/util/CharacterReferenceEx;-><init>()V

    .line 870
    .restart local v11       #key:Lorg/htmlparser/util/CharacterReferenceEx;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lorg/htmlparser/util/CharacterReferenceEx;->setKernel(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v11, v8}, Lorg/htmlparser/util/CharacterReferenceEx;->setStart(I)V

    .line 872
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/htmlparser/util/CharacterReferenceEx;->setEnd(I)V

    .line 873
    invoke-static {v11}, Lorg/htmlparser/util/Translate;->lookup(Lorg/htmlparser/util/CharacterReference;)Lorg/htmlparser/util/CharacterReference;

    move-result-object v10

    .line 874
    .local v10, item:Lorg/htmlparser/util/CharacterReference;
    if-eqz v10, :cond_12

    .line 876
    invoke-virtual {v10}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 877
    invoke-virtual {v10}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v8, v8, v17

    .line 878
    if-ge v8, v12, :cond_d

    const/16 v17, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 879
    add-int/lit8 v8, v8, 0x1

    .line 880
    :cond_d
    move v2, v8

    move v3, v2

    .end local v2           #amp:I
    .restart local v3       #amp:I
    goto/16 :goto_4

    .line 892
    .end local v5           #character:C
    .end local v6           #done:Z
    .end local v7           #i:I
    .end local v10           #item:Lorg/htmlparser/util/CharacterReference;
    .end local v16           #semi:I
    :cond_e
    if-ge v8, v12, :cond_11

    const/16 v17, -0x1

    const/16 v18, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .end local v3           #amp:I
    .restart local v2       #amp:I
    move/from16 v0, v17

    if-ne v0, v2, :cond_10

    move v9, v8

    .line 895
    .end local v8           #index:I
    .restart local v9       #index:I
    :goto_6
    if-ge v9, v12, :cond_f

    .line 896
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    goto :goto_6

    .line 897
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #ret:Ljava/lang/String;
    goto/16 :goto_0

    .end local v9           #index:I
    .end local v15           #ret:Ljava/lang/String;
    .restart local v8       #index:I
    :cond_10
    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    goto/16 :goto_1

    .end local v2           #amp:I
    .end local v9           #index:I
    .restart local v3       #amp:I
    .restart local v8       #index:I
    :cond_11
    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    move v2, v3

    .end local v3           #amp:I
    .restart local v2       #amp:I
    goto :goto_6

    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_12
    move v3, v2

    .end local v2           #amp:I
    .restart local v3       #amp:I
    goto/16 :goto_4

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3b -> :sswitch_4
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x58 -> :sswitch_3
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method public static decode(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .parameter "buffer"

    .prologue
    .line 912
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/htmlparser/util/Translate;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 10
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v9, -0x1

    .line 939
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "ISO-8859-1"

    invoke-direct {v7, p0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .local v4, reader:Ljava/io/Reader;
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 947
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 948
    .local v3, newlines:Z
    sget-boolean v7, Lorg/htmlparser/util/Translate;->DECODE_LINE_BY_LINE:Z

    if-eqz v7, :cond_4

    .line 949
    :goto_1
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v1

    .local v1, character:I
    if-eq v9, v1, :cond_5

    .line 951
    const/16 v7, 0xd

    if-eq v7, v1, :cond_0

    const/16 v7, 0xa

    if-ne v7, v1, :cond_2

    .line 953
    :cond_0
    if-nez v3, :cond_1

    .line 955
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/htmlparser/util/Translate;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 957
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 958
    const/4 v3, 0x1

    .line 960
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 987
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #character:I
    .end local v3           #newlines:Z
    .end local v4           #reader:Ljava/io/Reader;
    :catch_0
    move-exception v2

    .line 989
    .local v2, ioe:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 990
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 994
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 996
    .end local v2           #ioe:Ljava/io/IOException;
    :goto_2
    return-void

    .line 941
    :catch_1
    move-exception v6

    .line 944
    .local v6, use:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4       #reader:Ljava/io/Reader;
    goto :goto_0

    .line 964
    .end local v6           #use:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #character:I
    .restart local v3       #newlines:Z
    :cond_2
    if-eqz v3, :cond_3

    .line 966
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 967
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 968
    const/4 v3, 0x0

    .line 970
    :cond_3
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 994
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #character:I
    .end local v3           #newlines:Z
    .end local v4           #reader:Ljava/io/Reader;
    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 995
    throw v7

    .line 974
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #newlines:Z
    .restart local v4       #reader:Ljava/io/Reader;
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v1

    .restart local v1       #character:I
    if-eq v9, v1, :cond_5

    .line 975
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 976
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 978
    if-eqz v3, :cond_7

    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 994
    :cond_6
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_2

    .line 982
    :cond_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/htmlparser/util/Translate;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
    .restart local v5       #string:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4
.end method

.method public static encode(I)Ljava/lang/String;
    .locals 2
    .parameter "character"

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1010
    .local v0, ret:Ljava/lang/StringBuffer;
    const-string v1, "&#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1011
    sget-boolean v1, Lorg/htmlparser/util/Translate;->ENCODE_HEXADECIMAL:Z

    if-eqz v1, :cond_0

    .line 1013
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    :goto_0
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1017
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "string"

    .prologue
    const/16 v6, 0x3b

    .line 1037
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1038
    .local v4, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1039
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1041
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1042
    .local v0, c:C
    invoke-static {v0}, Lorg/htmlparser/util/Translate;->lookup(C)Lorg/htmlparser/util/CharacterReference;

    move-result-object v1

    .line 1043
    .local v1, candidate:Lorg/htmlparser/util/CharacterReference;
    if-eqz v1, :cond_0

    .line 1045
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    invoke-virtual {v1}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    const/16 v5, 0x7f

    if-lt v0, v5, :cond_2

    .line 1051
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    sget-boolean v5, Lorg/htmlparser/util/Translate;->ENCODE_HEXADECIMAL:Z

    if-eqz v5, :cond_1

    .line 1054
    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1058
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1062
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1065
    .end local v0           #c:C
    .end local v1           #candidate:Lorg/htmlparser/util/CharacterReference;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static encode(Ljava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 10
    .parameter "in"
    .parameter "out"

    .prologue
    .line 1087
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "ISO-8859-1"

    invoke-direct {v7, p0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1088
    .local v5, reader:Ljava/io/Reader;
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v9, "ISO-8859-1"

    invoke-direct {v8, p1, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1098
    .local v4, output:Ljava/io/PrintWriter;
    :goto_0
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v2

    .local v2, index:I
    if-eq v7, v2, :cond_3

    .line 1100
    int-to-char v0, v2

    .line 1101
    .local v0, c:C
    invoke-static {v0}, Lorg/htmlparser/util/Translate;->lookup(C)Lorg/htmlparser/util/CharacterReference;

    move-result-object v1

    .line 1102
    .local v1, candidate:Lorg/htmlparser/util/CharacterReference;
    if-eqz v1, :cond_0

    .line 1104
    const/16 v7, 0x26

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 1105
    invoke-virtual {v1}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1124
    .end local v0           #c:C
    .end local v1           #candidate:Lorg/htmlparser/util/CharacterReference;
    .end local v2           #index:I
    :catch_0
    move-exception v3

    .line 1126
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 1127
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1133
    .end local v3           #ioe:Ljava/io/IOException;
    :goto_1
    return-void

    .line 1090
    .end local v4           #output:Ljava/io/PrintWriter;
    .end local v5           #reader:Ljava/io/Reader;
    :catch_1
    move-exception v6

    .line 1093
    .local v6, use:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1094
    .restart local v5       #reader:Ljava/io/Reader;
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .restart local v4       #output:Ljava/io/PrintWriter;
    goto :goto_0

    .line 1108
    .end local v6           #use:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #c:C
    .restart local v1       #candidate:Lorg/htmlparser/util/CharacterReference;
    .restart local v2       #index:I
    :cond_0
    const/16 v7, 0x7f

    if-lt v0, v7, :cond_2

    .line 1110
    :try_start_3
    const-string v7, "&#"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    sget-boolean v7, Lorg/htmlparser/util/Translate;->ENCODE_HEXADECIMAL:Z

    if-eqz v7, :cond_1

    .line 1113
    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    :goto_2
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1131
    .end local v0           #c:C
    .end local v1           #candidate:Lorg/htmlparser/util/CharacterReference;
    .end local v2           #index:I
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1132
    throw v7

    .line 1117
    .restart local v0       #c:C
    .restart local v1       #candidate:Lorg/htmlparser/util/CharacterReference;
    .restart local v2       #index:I
    :cond_1
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_2

    .line 1121
    :cond_2
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1131
    .end local v0           #c:C
    .end local v1           #candidate:Lorg/htmlparser/util/CharacterReference;
    :cond_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    goto :goto_1
.end method

.method protected static lookup([Lorg/htmlparser/util/CharacterReference;CII)I
    .locals 7
    .parameter "array"
    .parameter "ref"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v6, -0x1

    .line 578
    const/4 v4, -0x1

    .line 580
    .local v4, ret:I
    sub-int v5, p3, p2

    add-int/lit8 v2, v5, 0x1

    .line 581
    .local v2, num:I
    :goto_0
    if-ne v6, v4, :cond_4

    if-gt p2, p3, :cond_4

    .line 583
    div-int/lit8 v0, v2, 0x2

    .line 584
    .local v0, half:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    move v5, v0

    :goto_1
    add-int v1, p2, v5

    .line 585
    .local v1, mid:I
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v5

    sub-int v3, p1, v5

    .line 586
    .local v3, result:I
    if-nez v3, :cond_1

    .line 587
    move v4, v1

    goto :goto_0

    .line 584
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_0
    add-int/lit8 v5, v0, -0x1

    goto :goto_1

    .line 588
    .restart local v1       #mid:I
    .restart local v3       #result:I
    :cond_1
    if-gez v3, :cond_3

    .line 590
    add-int/lit8 p3, v1, -0x1

    .line 591
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2

    move v2, v0

    .line 592
    :goto_2
    goto :goto_0

    .line 591
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 595
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 596
    move v2, v0

    .line 598
    goto :goto_0

    .line 599
    .end local v0           #half:I
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_4
    if-ne v6, v4, :cond_5

    .line 600
    move v4, p2

    .line 602
    :cond_5
    return v4
.end method

.method public static lookup(C)Lorg/htmlparser/util/CharacterReference;
    .locals 5
    .parameter "character"

    .prologue
    const/16 v4, 0x100

    .line 617
    if-ge p0, v4, :cond_1

    .line 618
    sget-object v2, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aget-object v1, v2, p0

    .line 632
    .local v1, ret:Lorg/htmlparser/util/CharacterReference;
    :cond_0
    :goto_0
    return-object v1

    .line 621
    .end local v1           #ret:Lorg/htmlparser/util/CharacterReference;
    :cond_1
    sget-object v2, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    sget-object v3, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, p0, v4, v3}, Lorg/htmlparser/util/Translate;->lookup([Lorg/htmlparser/util/CharacterReference;CII)I

    move-result v0

    .line 622
    .local v0, index:I
    sget-object v2, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 624
    sget-object v2, Lorg/htmlparser/util/Translate;->mCharacterList:[Lorg/htmlparser/util/CharacterReference;

    aget-object v1, v2, v0

    .line 625
    .restart local v1       #ret:Lorg/htmlparser/util/CharacterReference;
    invoke-virtual {v1}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v2

    if-eq p0, v2, :cond_0

    .line 626
    const/4 v1, 0x0

    goto :goto_0

    .line 629
    .end local v1           #ret:Lorg/htmlparser/util/CharacterReference;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #ret:Lorg/htmlparser/util/CharacterReference;
    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;II)Lorg/htmlparser/util/CharacterReference;
    .locals 2
    .parameter "kernel"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 720
    new-instance v0, Lorg/htmlparser/util/CharacterReferenceEx;

    invoke-direct {v0}, Lorg/htmlparser/util/CharacterReferenceEx;-><init>()V

    .line 721
    .local v0, probe:Lorg/htmlparser/util/CharacterReferenceEx;
    invoke-virtual {v0, p0}, Lorg/htmlparser/util/CharacterReferenceEx;->setKernel(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, p1}, Lorg/htmlparser/util/CharacterReferenceEx;->setStart(I)V

    .line 723
    invoke-virtual {v0, p2}, Lorg/htmlparser/util/CharacterReferenceEx;->setEnd(I)V

    .line 725
    invoke-static {v0}, Lorg/htmlparser/util/Translate;->lookup(Lorg/htmlparser/util/CharacterReference;)Lorg/htmlparser/util/CharacterReference;

    move-result-object v1

    return-object v1
.end method

.method protected static lookup(Lorg/htmlparser/util/CharacterReference;)Lorg/htmlparser/util/CharacterReference;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .line 659
    const/4 v3, 0x0

    .line 660
    .local v3, ret:Lorg/htmlparser/util/CharacterReference;
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    invoke-static {v6, p0}, Lorg/htmlparser/util/sort/Sort;->bsearch([Lorg/htmlparser/util/sort/Ordered;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v1

    .line 661
    .local v1, index:I
    invoke-virtual {p0}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, string:Ljava/lang/String;
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 664
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    aget-object v3, v6, v1

    .line 665
    invoke-virtual {v3}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, kernel:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v7, v2, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 673
    const/4 v3, 0x0

    .line 676
    .end local v2           #kernel:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    .line 678
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 679
    .local v0, character:C
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 681
    sget-object v6, Lorg/htmlparser/util/Translate;->mCharacterReferences:[Lorg/htmlparser/util/CharacterReference;

    aget-object v5, v6, v1

    .line 682
    .local v5, test:Lorg/htmlparser/util/CharacterReference;
    invoke-virtual {v5}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v2

    .line 683
    .restart local v2       #kernel:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_2

    .line 685
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v7, v2, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 691
    move-object v3, v5

    .line 700
    .end local v0           #character:C
    .end local v2           #kernel:Ljava/lang/String;
    .end local v5           #test:Lorg/htmlparser/util/CharacterReference;
    :cond_2
    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 1146
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "-encode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    const/4 v0, 0x1

    .line 1150
    .local v0, encode:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1151
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/htmlparser/util/Translate;->encode(Ljava/io/InputStream;Ljava/io/PrintStream;)V

    .line 1154
    :goto_1
    return-void

    .line 1149
    .end local v0           #encode:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #encode:Z
    goto :goto_0

    .line 1153
    :cond_1
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lorg/htmlparser/util/Translate;->decode(Ljava/io/InputStream;Ljava/io/PrintStream;)V

    goto :goto_1
.end method

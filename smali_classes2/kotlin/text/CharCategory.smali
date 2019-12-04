.class public final enum Lkotlin/text/CharCategory;
.super Ljava/lang/Enum;
.source "CharCategory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharCategory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharCategory;

.field public static final enum COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum CONTROL:Lkotlin/text/CharCategory;

.field public static final enum CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

.field public static final Companion:Lkotlin/text/CharCategory$Companion;

.field public static final enum DASH_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum ENCLOSING_MARK:Lkotlin/text/CharCategory;

.field public static final enum END_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FORMAT:Lkotlin/text/CharCategory;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum LETTER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum LINE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum LOWERCASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MATH_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum NON_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum OTHER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum OTHER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum PRIVATE_USE:Lkotlin/text/CharCategory;

.field public static final enum SPACE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum START_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum SURROGATE:Lkotlin/text/CharCategory;

.field public static final enum TITLECASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum UNASSIGNED:Lkotlin/text/CharCategory;

.field public static final enum UPPERCASE_LETTER:Lkotlin/text/CharCategory;

.field private static final categoryMap$delegate:Lkotlin/Lazy;


# instance fields
.field private final code:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1e

    new-array v0, v0, [Lkotlin/text/CharCategory;

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x0

    const-string v3, "UNASSIGNED"

    const-string v4, "Cn"

    .line 15
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x1

    const-string v3, "UPPERCASE_LETTER"

    const-string v4, "Lu"

    .line 20
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x2

    const-string v3, "LOWERCASE_LETTER"

    const-string v4, "Ll"

    .line 25
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x3

    const-string v3, "TITLECASE_LETTER"

    const-string v4, "Lt"

    .line 30
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x4

    const-string v3, "MODIFIER_LETTER"

    const-string v4, "Lm"

    .line 35
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x5

    const-string v3, "OTHER_LETTER"

    const-string v4, "Lo"

    .line 40
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x6

    const-string v3, "NON_SPACING_MARK"

    const-string v4, "Mn"

    .line 45
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/4 v2, 0x7

    const-string v3, "ENCLOSING_MARK"

    const-string v4, "Me"

    .line 50
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0x8

    const-string v3, "COMBINING_SPACING_MARK"

    const-string v4, "Mc"

    .line 55
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0x9

    const-string v3, "DECIMAL_DIGIT_NUMBER"

    const-string v4, "Nd"

    .line 60
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0xa

    const-string v3, "LETTER_NUMBER"

    const-string v4, "Nl"

    .line 65
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0xb

    const-string v3, "OTHER_NUMBER"

    const-string v4, "No"

    .line 70
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0xc

    const-string v3, "SPACE_SEPARATOR"

    const-string v4, "Zs"

    .line 75
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0xd

    const-string v3, "LINE_SEPARATOR"

    const-string v4, "Zl"

    .line 80
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const/16 v2, 0xe

    const-string v3, "PARAGRAPH_SEPARATOR"

    const-string v4, "Zp"

    .line 85
    invoke-direct {v1, v3, v2, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONTROL"

    const/16 v3, 0xf

    const/16 v4, 0xf

    const-string v5, "Cc"

    .line 90
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FORMAT"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const-string v5, "Cf"

    .line 95
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "PRIVATE_USE"

    const/16 v3, 0x11

    const/16 v4, 0x12

    const-string v5, "Co"

    .line 100
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "SURROGATE"

    const/16 v3, 0x12

    const/16 v4, 0x13

    const-string v5, "Cs"

    .line 105
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "DASH_PUNCTUATION"

    const/16 v3, 0x13

    const/16 v4, 0x14

    const-string v5, "Pd"

    .line 110
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "START_PUNCTUATION"

    const/16 v3, 0x14

    const/16 v4, 0x15

    const-string v5, "Ps"

    .line 115
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "END_PUNCTUATION"

    const/16 v3, 0x15

    const/16 v4, 0x16

    const-string v5, "Pe"

    .line 120
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONNECTOR_PUNCTUATION"

    const/16 v3, 0x16

    const/16 v4, 0x17

    const-string v5, "Pc"

    .line 125
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_PUNCTUATION"

    const/16 v3, 0x17

    const/16 v4, 0x18

    const-string v5, "Po"

    .line 130
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MATH_SYMBOL"

    const/16 v3, 0x18

    const/16 v4, 0x19

    const-string v5, "Sm"

    .line 135
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CURRENCY_SYMBOL"

    const/16 v3, 0x19

    const/16 v4, 0x1a

    const-string v5, "Sc"

    .line 140
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MODIFIER_SYMBOL"

    const/16 v3, 0x1a

    const/16 v4, 0x1b

    const-string v5, "Sk"

    .line 145
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_SYMBOL"

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    const-string v5, "So"

    .line 150
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "INITIAL_QUOTE_PUNCTUATION"

    const/16 v3, 0x1c

    const/16 v4, 0x1d

    const-string v5, "Pi"

    .line 155
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FINAL_QUOTE_PUNCTUATION"

    const/16 v3, 0x1d

    const/16 v4, 0x1e

    const-string v5, "Pf"

    .line 160
    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    .line 169
    sget-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->categoryMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharCategory;->value:I

    iput-object p4, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharCategory;
    .locals 1

    const-class v0, Lkotlin/text/CharCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharCategory;
    .locals 1

    sget-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    invoke-virtual {v0}, [Lkotlin/text/CharCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharCategory;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 11
    iget p0, p0, Lkotlin/text/CharCategory;->value:I

    return p0
.end method

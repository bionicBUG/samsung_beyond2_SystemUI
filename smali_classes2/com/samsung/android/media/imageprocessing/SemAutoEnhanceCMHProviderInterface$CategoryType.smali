.class public final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceCMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 578
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v1, 0x0

    const-string v2, "USER_TAG"

    invoke-direct {v0, v2, v1, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 579
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v2, 0x1

    const-string v3, "CALENDAR_EVENT"

    invoke-direct {v0, v3, v2, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 580
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v3, 0x2

    const-string v4, "LOCATION"

    invoke-direct {v0, v4, v3, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 581
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v4, 0x3

    const-string v5, "PERSON"

    invoke-direct {v0, v5, v4, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 582
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v5, 0x4

    const-string v6, "SCENE"

    invoke-direct {v0, v6, v5, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 583
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v6, 0x5

    const-string v7, "SUB_SCENE"

    invoke-direct {v0, v7, v6, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 584
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v7, 0x6

    const-string v8, "SHOT_MODE"

    invoke-direct {v0, v8, v7, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 585
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/4 v8, 0x7

    const-string v9, "POI"

    invoke-direct {v0, v9, v8, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 586
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/16 v9, 0x8

    const-string v10, "WEATHER"

    invoke-direct {v0, v10, v9, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    .line 577
    sget-object v10, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 591
    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
    .locals 1

    .line 577
    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
    .locals 1

    .line 577
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-object v0
.end method

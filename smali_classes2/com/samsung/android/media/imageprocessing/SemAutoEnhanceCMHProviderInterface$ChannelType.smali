.class public final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceCMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

.field public static final enum TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 554
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v1, 0x0

    const-string v2, "DUMMY"

    invoke-direct {v0, v2, v1, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 555
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v2, 0x1

    const-string v3, "MANUAL"

    invoke-direct {v0, v3, v2, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 556
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v3, 0x2

    const-string v4, "NO_MOMENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 557
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v4, 0x3

    const-string v5, "MOMENT"

    invoke-direct {v0, v5, v4, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 558
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v5, 0x4

    const-string v6, "STORY"

    invoke-direct {v0, v6, v5, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 559
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v6, 0x5

    const-string v7, "PERSON"

    invoke-direct {v0, v7, v6, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 560
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v7, 0x6

    const-string v8, "TAG"

    invoke-direct {v0, v8, v7, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 561
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/4 v8, 0x7

    const-string v9, "LOCATION"

    invoke-direct {v0, v9, v8, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 562
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/16 v9, 0x8

    const-string v10, "LIVE"

    invoke-direct {v0, v10, v9, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 563
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/16 v10, 0x9

    const-string v11, "SHARE_FOR_LIVE"

    invoke-direct {v0, v11, v10, v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 564
    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/16 v11, 0xa

    const-string v12, "SHARE_FOR_MANUAL"

    invoke-direct {v0, v12, v11, v11}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    .line 553
    sget-object v12, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->DUMMY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v12, v0, v1

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->NO_MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->MOMENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->STORY:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_LIVE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->SHARE_FOR_MANUAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 569
    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
    .locals 1

    .line 553
    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;
    .locals 1

    .line 553
    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;

    return-object v0
.end method

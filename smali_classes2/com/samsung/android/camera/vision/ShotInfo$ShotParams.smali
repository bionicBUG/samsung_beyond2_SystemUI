.class final enum Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;
.super Ljava/lang/Enum;
.source "ShotInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/vision/ShotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShotParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum BLUE_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum BLUE_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum BRIGHTNESS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum CENTER_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum CENTER_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum COMPRESSION:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum DIGITAL_ZOOM_RATIO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum EXPOSURE_TIME:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum FLASH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum FOCAL_LENGTH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum F_NUMBER:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum GAMMA:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum GREEN_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum GREEN_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum ISO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum RED_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum RED_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum SIGNIFICANT_BITS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum TIME_OF_SHOT:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_LEVEL:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_POINT_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_POINT_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;


# instance fields
.field final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 69
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v1, 0x0

    const-string v2, "EXPOSURE_TIME"

    invoke-direct {v0, v2, v1, v1}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 70
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v2, 0x1

    const-string v3, "COMPRESSION"

    invoke-direct {v0, v3, v2, v2}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 71
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v3, 0x2

    const-string v4, "ISO"

    invoke-direct {v0, v4, v3, v3}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->ISO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 72
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v4, 0x3

    const-string v5, "F_NUMBER"

    invoke-direct {v0, v5, v4, v4}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 73
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v5, 0x4

    const-string v6, "FOCAL_LENGTH"

    invoke-direct {v0, v6, v5, v5}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 74
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v6, 0x5

    const-string v7, "FLASH"

    invoke-direct {v0, v7, v6, v6}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 75
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v7, 0x6

    const-string v8, "BRIGHTNESS"

    invoke-direct {v0, v8, v7, v7}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 76
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/4 v8, 0x7

    const-string v9, "TIME_OF_SHOT"

    invoke-direct {v0, v9, v8, v8}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 77
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v9, 0x8

    const-string v10, "GAMMA"

    invoke-direct {v0, v10, v9, v9}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GAMMA:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 82
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v10, 0x9

    const-string v11, "SIGNIFICANT_BITS"

    invoke-direct {v0, v11, v10, v10}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->SIGNIFICANT_BITS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 83
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v11, 0xa

    const-string v12, "WHITE_LEVEL"

    invoke-direct {v0, v12, v11, v11}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_LEVEL:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 86
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v12, 0xb

    const-string v13, "WHITE_POINT_X"

    invoke-direct {v0, v13, v12, v12}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_POINT_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 87
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v13, 0xc

    const-string v14, "WHITE_POINT_Y"

    invoke-direct {v0, v14, v13, v13}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_POINT_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 88
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v14, 0xd

    const-string v15, "RED_X"

    invoke-direct {v0, v15, v14, v14}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->RED_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v15, 0xe

    const-string v14, "RED_Y"

    invoke-direct {v0, v14, v15, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->RED_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 89
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v14, "GREEN_X"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GREEN_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "GREEN_Y"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GREEN_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 90
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "BLUE_X"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BLUE_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "BLUE_Y"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BLUE_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 91
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "CENTER_X"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->CENTER_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "CENTER_Y"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->CENTER_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 92
    new-instance v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const-string v13, "DIGITAL_ZOOM_RATIO"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->DIGITAL_ZOOM_RATIO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    .line 67
    sget-object v13, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v13, v0, v1

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->ISO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GAMMA:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->SIGNIFICANT_BITS:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_LEVEL:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_POINT_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->WHITE_POINT_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->RED_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->RED_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GREEN_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->GREEN_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BLUE_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->BLUE_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->CENTER_X:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->CENTER_Y:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->DIGITAL_ZOOM_RATIO:Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;
    .locals 1

    .line 67
    const-class v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;

    return-object v0
.end method

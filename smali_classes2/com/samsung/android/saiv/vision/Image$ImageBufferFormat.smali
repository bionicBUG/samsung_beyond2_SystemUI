.class public final enum Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/saiv/vision/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageBufferFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum ABGR32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum ARGB32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum BGR24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum BGRA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum GRAY32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum GRAY8:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum RGB24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum RGB565:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum RGBA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum UNKNOWN:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YUV2:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YUV420P:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YUV420P_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YUV420SP:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YUV420SP_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YV16:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

.field public static final enum YVU9:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v1, 0x0

    const-string v2, "RGBA32"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGBA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 33
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v2, 0x1

    const-string v3, "BGRA32"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->BGRA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 38
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v3, 0x2

    const-string v4, "RGB24"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGB24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 43
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v4, 0x3

    const-string v5, "BGR24"

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->BGR24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 50
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v5, 0x4

    const-string v6, "RGB565"

    invoke-direct {v0, v6, v5}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGB565:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 53
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v6, 0x5

    const-string v7, "GRAY32"

    invoke-direct {v0, v7, v6}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->GRAY32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 56
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v7, 0x6

    const-string v8, "GRAY8"

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->GRAY8:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 62
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/4 v8, 0x7

    const-string v9, "YUV2"

    invoke-direct {v0, v9, v8}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV2:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 68
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v9, 0x8

    const-string v10, "YVU9"

    invoke-direct {v0, v10, v9}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YVU9:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 71
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v10, 0x9

    const-string v11, "YUV420P"

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420P:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 74
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v11, 0xa

    const-string v12, "YUV420SP"

    invoke-direct {v0, v12, v11}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420SP:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 77
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v12, 0xb

    const-string v13, "YUV420P_WIDE"

    invoke-direct {v0, v13, v12}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420P_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 80
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v13, 0xc

    const-string v14, "YUV420SP_WIDE"

    invoke-direct {v0, v14, v13}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420SP_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 83
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v14, 0xd

    const-string v15, "YV16"

    invoke-direct {v0, v15, v14}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YV16:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 89
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v15, 0xe

    const-string v14, "ARGB32"

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ARGB32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 94
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const-string v14, "ABGR32"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ABGR32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 96
    new-instance v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->UNKNOWN:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    .line 24
    sget-object v14, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGBA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->BGRA32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGB24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->BGR24:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->RGB565:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->GRAY32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->GRAY8:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV2:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YVU9:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420P:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420SP:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420P_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YUV420SP_WIDE:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->YV16:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ARGB32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->ABGR32:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->UNKNOWN:Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->$VALUES:[Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->$VALUES:[Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;

    return-object v0
.end method

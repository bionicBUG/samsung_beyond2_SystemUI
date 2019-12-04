.class public final enum Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;
.super Ljava/lang/Enum;
.source "SmartCropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLOR_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CF_ARGB32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

.field public static final enum CF_BGRA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

.field public static final enum CF_RGBA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

.field public static final enum CF_YUV420P:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

.field public static final enum CF_YUV420SP:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CF_RGBA32"

    .line 30
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_RGBA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    .line 32
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v3, 0x2

    const-string v4, "CF_BGRA32"

    .line 36
    invoke-direct {v0, v4, v2, v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_BGRA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    .line 38
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const-string v4, "CF_YUV420P"

    const/16 v5, 0x200

    .line 41
    invoke-direct {v0, v4, v3, v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_YUV420P:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    .line 45
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v4, 0x3

    const-string v5, "CF_YUV420SP"

    const/16 v6, 0x400

    invoke-direct {v0, v5, v4, v6}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_YUV420SP:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    .line 51
    new-instance v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v5, 0x4

    const-string v6, "CF_ARGB32"

    const/16 v7, 0x1000

    invoke-direct {v0, v6, v5, v7}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_ARGB32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    .line 25
    sget-object v6, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_RGBA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    aput-object v6, v0, v1

    sget-object v1, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_BGRA32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_YUV420P:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_YUV420SP:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->CF_ARGB32:Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;->ENUM$VALUES:[Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;
.super Ljava/lang/Object;
.source "SemAutoEnhanceNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "AutoEnhance"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AutoEnhanceTiltEstimation(J)I
.end method

.method public static native ImageDecode(Ljava/lang/String;[BII)I
.end method

.method public static native ImageEncodeFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

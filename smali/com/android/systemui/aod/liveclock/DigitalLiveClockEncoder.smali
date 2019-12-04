.class public Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;
.super Ljava/lang/Object;
.source "DigitalLiveClockEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DigitalClockEncoder.aod.samsung"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getImageDataByDuploV32(II[BBIZZ)[B
.end method


# virtual methods
.method public getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B
    .locals 9

    const-string v0, "imageWidth"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "imageHeight"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "imgData"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v0, "Margin"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    const-string/jumbo v0, "standardColor"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "lineIterEnable"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v0, "standardColorEnable"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32(II[BBIZZ)[B

    move-result-object p0

    return-object p0
.end method

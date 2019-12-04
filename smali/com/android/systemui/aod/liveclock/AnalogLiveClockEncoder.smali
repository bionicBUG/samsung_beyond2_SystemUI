.class public Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;
.super Ljava/lang/Object;
.source "AnalogLiveClockEncoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AnalogClockEncoder.aod.samsung"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getAnalogImageDataForDreamDevice([B[BZZZ)[B
.end method


# virtual methods
.method public getAnalogImageDataForDreamDeviceFromNative(Landroid/os/Bundle;)[B
    .locals 7

    const-string v0, "in_bitstream"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "adaptive_Color"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "Color_hh_en"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "Color_mm_en"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "Color_ss_en"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object v1, p0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;->getAnalogImageDataForDreamDevice([B[BZZZ)[B

    move-result-object p0

    return-object p0
.end method

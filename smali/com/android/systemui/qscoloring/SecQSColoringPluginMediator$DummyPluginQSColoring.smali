.class public Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$DummyPluginQSColoring;
.super Ljava/lang/Object;
.source "SecQSColoringPluginMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyPluginQSColoring"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQSColoringBackgroundAlpha()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQSColoringBlurEffectAmount()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQSColoringColor(I)I
    .locals 0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_3

    const/16 p0, 0xc

    if-eq p1, p0, :cond_2

    const/16 p0, 0x15

    if-eq p1, p0, :cond_2

    const/16 p0, 0x16

    if-eq p1, p0, :cond_3

    const/16 p0, 0x1f

    if-eq p1, p0, :cond_1

    const/16 p0, 0x20

    if-eq p1, p0, :cond_0

    const/16 p0, 0x29

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, -0xff01

    return p0

    :pswitch_1
    const p0, -0x1afff01

    return p0

    :pswitch_2
    const p0, -0x15f5f01

    return p0

    :pswitch_3
    const p0, -0x1ffaf01

    return p0

    :pswitch_4
    const/4 p0, -0x1

    return p0

    :pswitch_5
    const p0, -0xffff01

    return p0

    :cond_0
    :pswitch_6
    const p0, -0x333334

    return p0

    :cond_1
    :pswitch_7
    const/high16 p0, -0x10000

    return p0

    :cond_2
    :pswitch_8
    const/16 p0, -0x100

    return p0

    :cond_3
    :pswitch_9
    const p0, -0xff0001

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getQSColoringDimEffectAmount()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationColoringEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isQSColoringBlurEffectEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQSColoringDimEffectEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQSColoringEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUserPreferOpenTheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPluginConfigurationChanged()V
    .locals 1

    const-string p0, "[QuickStar]SecQSColoringPluginMediator"

    const-string v0, "Dummy onPluginConfigurationChanged()"

    .line 259
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPluginConnected()V
    .locals 1

    const-string p0, "[QuickStar]SecQSColoringPluginMediator"

    const-string v0, "Dummy onPluginConnected()"

    .line 249
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPluginDisconnected()V
    .locals 1

    const-string p0, "[QuickStar]SecQSColoringPluginMediator"

    const-string v0, "Dummy onPluginDisconnected()"

    .line 254
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V
    .locals 0

    return-void
.end method

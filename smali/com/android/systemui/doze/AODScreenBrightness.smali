.class public Lcom/android/systemui/doze/AODScreenBrightness;
.super Lcom/android/systemui/doze/DozeScreenBrightness;
.source "AODScreenBrightness.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeBrightness;


# instance fields
.field private mBrightnessValues:[I

.field private mDozeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x61
    .end array-data
.end method

.method private computeBrightness(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private updateBrightness(ZI)V
    .locals 1

    .line 57
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/AODScreenBrightness;->computeBrightness(I)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget p0, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected resetBrightnessToDefault()V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method public setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    .line 25
    sget-object p1, Lcom/android/systemui/doze/AODScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    :goto_0
    return-void
.end method

.method public updateDozeBrightness(II)V
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    .line 53
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/doze/AODScreenBrightness;->updateBrightness(ZI)V

    return-void
.end method

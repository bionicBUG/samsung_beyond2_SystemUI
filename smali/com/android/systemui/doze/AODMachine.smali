.class public Lcom/android/systemui/doze/AODMachine;
.super Lcom/android/systemui/doze/DozeMachine;
.source "AODMachine.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$Callback;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mDozeBrightness:Lcom/android/systemui/doze/DozeBrightness;

.field private mDozeWindow:Lcom/android/systemui/doze/DozeWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/AODMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-void
.end method

.method private getDozeBrightness()Lcom/android/systemui/doze/DozeBrightness;
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mDozeBrightness:Lcom/android/systemui/doze/DozeBrightness;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    instance-of v4, v3, Lcom/android/systemui/doze/DozeBrightness;

    if-eqz v4, :cond_0

    .line 110
    check-cast v3, Lcom/android/systemui/doze/DozeBrightness;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mDozeBrightness:Lcom/android/systemui/doze/DozeBrightness;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mDozeBrightness:Lcom/android/systemui/doze/DozeBrightness;

    return-object p0
.end method

.method private getDozeWindow()Lcom/android/systemui/doze/DozeWindow;
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mDozeWindow:Lcom/android/systemui/doze/DozeWindow;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    instance-of v4, v3, Lcom/android/systemui/doze/DozeWindow;

    if-eqz v4, :cond_0

    .line 122
    check-cast v3, Lcom/android/systemui/doze/DozeWindow;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mDozeWindow:Lcom/android/systemui/doze/DozeWindow;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mDozeWindow:Lcom/android/systemui/doze/DozeWindow;

    return-object p0
.end method

.method private getState(I)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    .line 143
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 141
    :cond_0
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 137
    :cond_1
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 139
    :cond_2
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 133
    :cond_3
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 135
    :cond_4
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getDozeWindow()Lcom/android/systemui/doze/DozeWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeWindow;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public onFinishMOD(I)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 63
    iget p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onRequestMOD(I)V
    .locals 1

    const/4 v0, 0x6

    .line 56
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 57
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    return-void
.end method

.method public onRequestState(I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateDozeBrightness(II)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getDozeBrightness()Lcom/android/systemui/doze/DozeBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/doze/DozeBrightness;->updateDozeBrightness(II)V

    :cond_0
    return-void
.end method

.method public onUpdateWindowLayoutParams()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getDozeWindow()Lcom/android/systemui/doze/DozeWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeWindow;->updateWindowLayoutParams()V

    :cond_0
    return-void
.end method

.method public setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getDozeBrightness()Lcom/android/systemui/doze/DozeBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeBrightness;->setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;
.super Ljava/lang/Object;
.source "FakeVolumeInfraMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# static fields
.field private static final sConditionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

.field private final mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/volume/util/LogWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public disableSafeMediaVolume()V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->forceVolumeControlStream(I)V

    return-void
.end method

.method public varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object p2, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->v(Ljava/lang/String;)V

    return-object p2

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public initSound(I)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    return-void
.end method

.method public varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 1

    .line 35
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object p2, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->v(Ljava/lang/String;)V

    return p2

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyVisible(Z)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    return-void
.end method

.method public playSound()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 103
    sget-object p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    return-void
.end method

.method public setActiveStream(I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    return-void
.end method

.method public setMediaDefault(Z)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setMediaDefault(Z)V

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    return-void
.end method

.method public setStreamVolume(II)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    return-void
.end method

.method public setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method

.method public startSettingsActivity()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    return-void
.end method

.method public toggleWifiDisplayMute()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    return-void
.end method

.method public updateCondition(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    move-result-object p0

    .line 115
    :goto_0
    sget-object p1, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    sget-object p1, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_0
    sget-object p1, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    return-void
.end method

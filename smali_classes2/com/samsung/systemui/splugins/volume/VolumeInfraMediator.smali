.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.super Ljava/lang/Object;
.source "VolumeInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;,
        Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;
    }
.end annotation


# virtual methods
.method public abstract disableSafeMediaVolume()V
.end method

.method public abstract forceVolumeControlStream(I)V
.end method

.method public varargs abstract get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract initSound(I)V
.end method

.method public varargs abstract isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
.end method

.method public abstract notifyVisible(Z)V
.end method

.method public abstract playSound()V
.end method

.method public abstract sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
.end method

.method public abstract sendSystemDialogsCloseAction()V
.end method

.method public abstract setActiveStream(I)V
.end method

.method public abstract setMediaDefault(Z)V
.end method

.method public abstract setRingerMode(IZ)V
.end method

.method public abstract setStreamVolume(II)V
.end method

.method public abstract setStreamVolumeDualAudio(IILjava/lang/String;)V
.end method

.method public abstract startSettingsActivity()V
.end method

.method public abstract toggleWifiDisplayMute()V
.end method

.method public abstract userActivity()V
.end method

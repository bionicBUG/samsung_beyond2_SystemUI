.class public Lcom/android/systemui/volume/util/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public disableSafeMediaVolume()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    return-void
.end method

.method public getDevicesForStreamMusic()I
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    return p0
.end method

.method public getEarProtectLevel()I
    .locals 0

    .line 18
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result p0

    return p0
.end method

.method public getMusicFineVolume()I
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    return p0
.end method

.method public getPinAppName(I)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPinDevice()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p0

    return p0
.end method

.method public getPinDeviceName(I)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isBluetoothScoOn()Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    return p0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result p0

    return p0
.end method

.method public isSafeMediaVolumePinDeviceOn()Z
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result p0

    return p0
.end method

.method public isUserInCall()Z
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

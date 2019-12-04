.class public Lcom/android/systemui/volume/SecVolumeInfraMediator;
.super Ljava/lang/Object;
.source "SecVolumeInfraMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# instance fields
.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

.field private final mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field private final mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

.field private final mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field private final mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

.field private final mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field private final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

.field private final mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field private final mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field private final mSemPersonaMangerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field private final mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field private final mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

.field private final mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

.field private final mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

.field private final mTelephonyManagerWrapper:Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

.field private final mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mContext:Landroid/content/Context;

    .line 56
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 57
    const-class v0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    .line 58
    const-class v0, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mTelephonyManagerWrapper:Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    .line 59
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 60
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 61
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 62
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 63
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 64
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 65
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 66
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 67
    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 68
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 69
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSemPersonaMangerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 70
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 71
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 72
    const-class v0, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    .line 73
    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 74
    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 75
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 76
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    return-void
.end method


# virtual methods
.method public disableSafeMediaVolume()V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->disableSafeMediaVolume()V

    return-void
.end method

.method public forceVolumeControlStream(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->forceVolumeControlStream(I)V

    return-void
.end method

.method public varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 178
    sget-object v0, Lcom/android/systemui/volume/SecVolumeInfraMediator$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumeInfraMediator$Values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 217
    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 214
    :pswitch_1
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getMusicFineVolume()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 211
    :pswitch_2
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getDevicesForStreamMusic()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 205
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinAppName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 201
    :pswitch_5
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_CONTROLS:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_TEXT:I

    or-int/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 198
    :pswitch_6
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAccessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_CONTROLS:I

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 195
    :pswitch_7
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSystemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SystemClockWrapper;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 192
    :pswitch_8
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getPinDevice()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 189
    :pswitch_9
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->getEarProtectLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 186
    :pswitch_a
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 183
    :pswitch_b
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 180
    :pswitch_c
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtScoDeviceName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 224
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

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

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->p(Ljava/lang/String;)V

    :cond_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSound(I)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    return-void
.end method

.method public varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    .line 93
    sget-object v0, Lcom/android/systemui/volume/SecVolumeInfraMediator$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumeInfraMediator$Conditions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 167
    :pswitch_0
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    move-result v1

    goto/16 :goto_0

    .line 164
    :pswitch_1
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mConfigurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    move-result v1

    goto/16 :goto_0

    .line 161
    :pswitch_2
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    move-result v1

    goto/16 :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/ZenModeHelper;->isZenModePriorityOnly(I)Z

    move-result v1

    goto/16 :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mZenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/util/ZenModeHelper;->isZenModeEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 152
    :pswitch_5
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->isStandalone()Z

    move-result v1

    goto/16 :goto_0

    .line 149
    :pswitch_6
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    move-result v1

    goto/16 :goto_0

    .line 146
    :pswitch_7
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isScreenSharing()Z

    move-result v1

    goto/16 :goto_0

    .line 143
    :pswitch_8
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioDLNAEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 140
    :pswitch_9
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 137
    :pswitch_a
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    move-result v1

    goto/16 :goto_0

    .line 134
    :pswitch_b
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    move-result v1

    goto :goto_0

    .line 131
    :pswitch_c
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn()Z

    move-result v1

    goto :goto_0

    .line 128
    :pswitch_d
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSemPersonaMangerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->isKioskModeEnabled()Z

    move-result v1

    goto :goto_0

    .line 125
    :pswitch_e
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isUserInCall()Z

    move-result v1

    goto :goto_0

    .line 122
    :pswitch_f
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isBluetoothScoOn()Z

    move-result v1

    goto :goto_0

    .line 119
    :pswitch_10
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isAllSoundOff()Z

    move-result v1

    goto :goto_0

    .line 116
    :pswitch_11
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->isShadeLockedState()Z

    move-result v1

    goto :goto_0

    .line 113
    :pswitch_12
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->isKeyguardState()Z

    move-result v1

    goto :goto_0

    .line 110
    :pswitch_13
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->isMediaDefault()Z

    move-result v1

    goto :goto_0

    .line 107
    :pswitch_14
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isSafeMediaVolumePinDeviceOn()Z

    move-result v1

    goto :goto_0

    .line 104
    :pswitch_15
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mAudioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/AudioManagerWrapper;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    goto :goto_0

    .line 101
    :pswitch_16
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v1

    goto :goto_0

    .line 98
    :pswitch_17
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mPowerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/PowerManagerWrapper;->isInteractive(Landroid/content/Context;)Z

    move-result p2

    xor-int/lit8 v1, p2, 0x1

    goto :goto_0

    .line 95
    :pswitch_18
    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mTelephonyManagerWrapper:Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    .line 170
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->p(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyVisible(Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public playSound()V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->playSound()V

    return-void
.end method

.method public sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSALoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->sendSystemDialogsCloseAction()V

    return-void
.end method

.method public setActiveStream(I)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    return-void
.end method

.method public setMediaDefault(Z)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->setMediaDefault(Z)V

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    return-void
.end method

.method public setStreamVolume(II)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    return-void
.end method

.method public setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method

.method public startSettingsActivity()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    return-void
.end method

.method public toggleWifiDisplayMute()V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeInfraMediator;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

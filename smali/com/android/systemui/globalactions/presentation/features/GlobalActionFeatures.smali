.class public Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;
.super Ljava/lang/Object;
.source "GlobalActionFeatures.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/Features;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

.field private final mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSystemPropertiesWrapper:Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    .line 45
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method

.method private isBikeModeSupported()Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bikemode"

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "globalaction"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCoverSupported()Z
    .locals 0

    .line 87
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_COVER:Z

    return p0
.end method

.method private isDataModeSupported()Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDemoModeSupported()Z
    .locals 2

    .line 96
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->isShopDemo()Z

    move-result p0

    if-nez p0, :cond_1

    .line 98
    invoke-static {}, Lcom/android/systemui/Rune;->isLDUSKU()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isDesktopModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isEffectSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isFingerPrintInDisplay()Z
    .locals 0

    .line 107
    sget-boolean p0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p0, :cond_0

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

.method private isForceRestartMessageSupported()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isKnoxContainerSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isKnoxMDMSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isKnoxSDKSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isNaviBarSupported()Z
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isSafetyCareSupported()Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSideKeySupported()Z
    .locals 1

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportPowerOffLock()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_SupportPowerOffLock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SF_EFFECT"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isEffectSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_0
    const-string v0, "NAV_BAR"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isNaviBarSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "DESKTOP_MODE"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDesktopModeSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "KNOX_SDK"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxSDKSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "SAFETY_CARE"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isSafetyCareSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "KNOX_CONTAINER"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxContainerSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "BIKE_MODE"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isBikeModeSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "SCOVER"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isCoverSupported()Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "DATA_MODE"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDataModeSupported()Z

    move-result v0

    goto :goto_0

    :cond_8
    const-string v0, "DEMO_MODE"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isDemoModeSupported()Z

    move-result v0

    goto :goto_0

    :cond_9
    const-string v0, "KNOX_DEVICE_MANAGER"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isKnoxMDMSupported()Z

    move-result v0

    goto :goto_0

    :cond_a
    const-string v0, "LOCK_DOWN_MODE"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    const-string v0, "FORCE_RESTART_MESSAGE"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isForceRestartMessageSupported()Z

    move-result v0

    goto :goto_0

    :cond_c
    const-string v0, "FINGERPRINT_IN_DISPLAY"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isFingerPrintInDisplay()Z

    move-result v0

    goto :goto_0

    :cond_d
    const-string v0, "SUPPORT_SIDE_KEY"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isSideKeySupported()Z

    move-result v0

    goto :goto_0

    :cond_e
    const-string v0, "POWER_OFF_LOCK"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->isSupportPowerOffLock()Z

    move-result v0

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GlobalActionFeatures"

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

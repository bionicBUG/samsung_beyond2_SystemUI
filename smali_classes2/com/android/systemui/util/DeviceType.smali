.class public final Lcom/android/systemui/util/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# static fields
.field public static DEBUG_LEVEL_HIGH:I = 0x2

.field public static DEBUG_LEVEL_LOW:I = 0x0

.field public static DEBUG_LEVEL_MID:I = 0x1

.field private static debugLevel:I = -0x1

.field private static mIsDualLCDDevice:Z = false

.field private static mIsDualLCDDeviceChecked:Z = false

.field private static mIsFolderTypeDevice:Z = false

.field private static mIsFolderTypeDeviceChecked:Z = false

.field private static sCachedEngOrUTBinary:I = -0x1

.field private static supportDeadzone:I = -0x1

.field private static supportFBE:I = -0x1

.field private static supportInDisplayFingerprint:I = -0x1

.field private static supportLightSensor:I = -0x1

.field private static supportMultiSIM:I = -0x1

.field private static supportOpticalFingerprint:I = -0x1

.field private static supportRearFingerprint:I = -0x1

.field private static supportSEPLite:I = -0x1

.field private static supportSideFingerprint:I = -0x1

.field private static supportTablet:I = -0x1

.field private static supportTouchProximity:I = -0x1

.field private static supportVibrator:I = -0x1

.field private static supportWOF:I = -0x1

.field private static supportWifiOnly:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugLevel()I
    .locals 2

    .line 250
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "ro.debug_level"

    const-string v1, "Unknown"

    .line 251
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_0

    :cond_0
    const-string v1, "0x494d"

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_0

    :cond_1
    const-string v1, "0x4948"

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 260
    :cond_2
    :goto_0
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    return v0
.end method

.method public static isDeadzoneSupported()Z
    .locals 2

    .line 137
    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    .line 139
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deadzone_v2"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    .line 142
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 1

    .line 274
    sget-boolean v0, Lcom/android/systemui/util/DeviceType;->mIsDualLCDDeviceChecked:Z

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.dual_lcd"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsDualLCDDevice:Z

    const/4 p0, 0x1

    .line 276
    sput-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsDualLCDDeviceChecked:Z

    .line 278
    :cond_0
    sget-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsDualLCDDevice:Z

    return p0
.end method

.method public static isDualLCDFolderDevice(Landroid/content/Context;)Z
    .locals 1

    .line 290
    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isFolderDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEngOrUTBinary()Z
    .locals 4

    .line 296
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 297
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.log.seclevel"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    .line 299
    :cond_2
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isFbeSupported(Landroid/content/Context;)Z
    .locals 2

    .line 121
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 123
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result p0

    sput p0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    .line 125
    :cond_0
    sget p0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFolderDevice(Landroid/content/Context;)Z
    .locals 1

    .line 282
    sget-boolean v0, Lcom/android/systemui/util/DeviceType;->mIsFolderTypeDeviceChecked:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.folder_type"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsFolderTypeDevice:Z

    const/4 p0, 0x1

    .line 284
    sput-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsFolderTypeDeviceChecked:Z

    .line 286
    :cond_0
    sget-boolean p0, Lcom/android/systemui/util/DeviceType;->mIsFolderTypeDevice:Z

    return p0
.end method

.method public static isInDisplayFingerprintSupported()Z
    .locals 3

    .line 164
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 166
    sput v1, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 168
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLightSensorSupported(Landroid/content/Context;)Z
    .locals 6

    .line 82
    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "sensor"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 84
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 88
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const v5, 0x10044

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    :goto_1
    sput v3, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    return v3

    .line 94
    :cond_2
    sput v2, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 96
    :cond_3
    sget p0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    if-ne p0, v3, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static isMultiSimSupported()Z
    .locals 4

    .line 58
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    .line 62
    :cond_1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isOpticalFingerprintSupported()Z
    .locals 3

    .line 172
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 174
    sput v1, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 176
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static isReadable(Ljava/lang/String;)Z
    .locals 5

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "isReadable "

    const-string v4, "DeviceType"

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " canRead: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isRearFingerprintSupported()Z
    .locals 3

    .line 148
    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 150
    sput v1, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    .line 152
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isSEPLiteDevice(Landroid/content/Context;)Z
    .locals 2

    .line 129
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput p0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    .line 132
    :cond_0
    sget p0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShipBuild()Z
    .locals 2

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 264
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSideFingerprintSupported()Z
    .locals 3

    .line 156
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 158
    sput v1, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    .line 160
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isTablet()Z
    .locals 2

    .line 50
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ro.build.characteristics"

    const-string v1, "phone"

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 54
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTouchProximitySupported(Landroid/content/Context;)Z
    .locals 4

    .line 100
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "sensor"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const v0, 0x1003c

    .line 102
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 103
    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    .line 105
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .locals 4

    .line 66
    sget v0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "vibrator"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    .line 70
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isWOFSupported()Z
    .locals 2

    const-string v0, "/sys/class/fingerprint/fingerprint/adm"

    .line 180
    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportWOF:I

    .line 184
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWOF:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 4

    .line 109
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "connectivity"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 114
    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    .line 117
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "readFromFile"

    .line 188
    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isReadable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DeviceType"

    if-nez v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readFromFile Failed isReadable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 199
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readFromFile finish, time: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v6, v2

    goto :goto_3

    :catch_1
    move-exception p0

    .line 210
    :goto_1
    :try_start_3
    invoke-static {v3, v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 214
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 216
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz v6, :cond_3

    .line 214
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 216
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_3
    :goto_4
    throw p0
.end method

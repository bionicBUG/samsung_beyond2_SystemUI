.class public final Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.super Ljava/lang/Object;
.source "KeyguardUnlockInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;,
        Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field private static sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private static sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private static sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    .line 32
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLastInfoAndReset(Z)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 72
    :goto_0
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v2, 0x186a0

    mul-int/2addr p0, v2

    .line 73
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr p0, v2

    .line 74
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$1;->$SwitchMap$com$android$systemui$keyguard$KeyguardUnlockInfo$AuthType:[I

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    goto :goto_1

    .line 76
    :cond_2
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_1
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr p0, v2

    :cond_3
    :goto_2
    if-le p0, v0, :cond_4

    .line 91
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr p0, v2

    .line 94
    :cond_4
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    if-eqz v2, :cond_7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 96
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_3

    .line 97
    :cond_5
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    goto :goto_3

    .line 98
    :cond_6
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    :goto_3
    aput-object v2, v0, v4

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    aput-object v2, v0, v1

    const-string v1, "KeyguardUnlockInfo"

    const-string v2, "%d: %s %s"

    .line 95
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_7
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    return p0
.end method

.method public static reset()V
    .locals 1

    .line 36
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 38
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 39
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method public static setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 54
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 p0, 0x0

    .line 55
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method public static setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    .line 60
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 p0, 0x0

    .line 61
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public static setAuthDetailSmartLock()V
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SMART_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sAuthType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 67
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method

.method public static setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method public static setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, v1, :cond_0

    .line 48
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->sUnlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    :cond_0
    return-void
.end method

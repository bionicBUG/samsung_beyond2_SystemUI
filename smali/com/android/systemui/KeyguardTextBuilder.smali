.class public Lcom/android/systemui/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/systemui/KeyguardTextBuilder$PromptReason;,
        Lcom/android/systemui/KeyguardTextBuilder$Security;,
        Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/KeyguardTextBuilder;


# instance fields
.field private m2StepVerification:Z

.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field private mIsIb:Z

.field private mIsIris:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    .line 129
    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 130
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 132
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 134
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "tablet"

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 5

    .line 417
    iget v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    iget p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 419
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 418
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 1

    .line 138
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/systemui/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    .line 141
    :cond_0
    sget-object p0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    return-object p0
.end method

.method private updateCurrentState(Z)V
    .locals 7

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    .line 434
    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType()I

    move-result v2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 435
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v1, :cond_1

    and-int/lit8 v5, v2, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 437
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-nez v1, :cond_2

    and-int/lit16 v5, v2, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 439
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    .line 441
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez p1, :cond_10

    .line 445
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_4

    :cond_4
    move p1, v3

    :goto_4
    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    .line 446
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_6

    .line 447
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_5

    :cond_5
    move p1, v3

    :goto_5
    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    .line 449
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 450
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_a

    .line 453
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz p1, :cond_9

    .line 454
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result p1

    if-nez p1, :cond_8

    move p1, v4

    goto :goto_6

    :cond_8
    move p1, v3

    :goto_6
    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    goto :goto_8

    .line 456
    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v4

    goto :goto_7

    :cond_a
    move p1, v3

    :goto_7
    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    .line 458
    :goto_8
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_b

    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_c

    .line 459
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 460
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v4

    goto :goto_9

    :cond_c
    move p1, v3

    :goto_9
    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    .line 461
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    move v3, v4

    :cond_d
    iput-boolean v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    goto :goto_b

    .line 451
    :cond_e
    :goto_a
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_f

    move v3, v4

    :cond_f
    iput-boolean v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    .line 465
    :cond_10
    :goto_b
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    const-string v0, "none"

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz p1, :cond_12

    .line 466
    :cond_11
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_c

    .line 467
    :cond_12
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz p1, :cond_13

    .line 468
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_c

    .line 469
    :cond_13
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz p1, :cond_14

    .line 470
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_c

    .line 471
    :cond_14
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_15

    .line 472
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_c

    .line 473
    :cond_15
    iget-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz p1, :cond_16

    .line 474
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_c

    .line 476
    :cond_16
    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    .line 480
    :goto_c
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 481
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v4, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17

    .line 499
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 495
    :cond_17
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 492
    :cond_18
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 489
    :cond_19
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 486
    :cond_1a
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 483
    :cond_1b
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_d

    .line 503
    :cond_1c
    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    .line 506
    :goto_d
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz p1, :cond_1d

    .line 507
    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    :cond_1d
    return-void
.end method

.method private updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 512
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 526
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_0
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_1
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_2
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_3
    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const p1, 0x10402de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 166
    iget-boolean v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    const-string v2, "none"

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iput-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 171
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_use_biometrics_first:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 173
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_use_irises_first:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_4

    .line 175
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_use_fingerprint_first:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 183
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v0, :cond_8

    .line 185
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 187
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 188
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, p1

    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v5

    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 193
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 189
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v2, v1, p1

    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v1, v4

    .line 189
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 198
    :cond_8
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 199
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 200
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 206
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v5

    sget-object p1, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    .line 209
    invoke-virtual {p1}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 206
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 202
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v3, v1, p1

    aput-object v2, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v1, v4

    .line 202
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 213
    :cond_b
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 215
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 216
    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 220
    :cond_c
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 221
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_finger_print_template_changed_error_message:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_biometric_security_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v1, v5

    .line 223
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 217
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v1, v4

    .line 217
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 227
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 232
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find default string id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_5
    return-object p0
.end method

.method public getFPFailedAttemptionGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 395
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_secure_using_swipe_instead_of_fingerprints:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 399
    :cond_0
    sget-object p3, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x2

    if-eq p2, v1, :cond_3

    if-eq p2, p3, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 410
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_secure_password:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 407
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_secure_pattern:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 404
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_secure_password:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 401
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_secure_pin:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 412
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_secure_using_ppp_instead_of_fingerprints:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    aput-object p2, p3, v1

    invoke-virtual {p0, v2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 8

    .line 247
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const p1, 0x10402de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x1

    .line 256
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "none"

    if-eq p2, p1, :cond_2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return-object v1

    .line 270
    :cond_1
    sget-object p2, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_2
    sget-object p2, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p2}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    :cond_3
    move-object v0, v4

    .line 277
    :goto_0
    sget-object p2, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p2}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-nez p2, :cond_5

    sget-object p2, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    .line 278
    invoke-virtual {p2}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p2

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 284
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v7, Lcom/android/systemui/R$string;->kg_device_biometric_security_reason_instructions:I

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    aput-object v0, v6, p1

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v6, v3

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    aput-object p1, v6, v2

    .line 284
    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 279
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->kg_device_biometric_security_active_instructions:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v0, v5

    aput-object v4, v0, p1

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object p1, v0, v2

    .line 279
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 289
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {p2, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 294
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find prompt string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v1
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 11

    const-string v0, "1"

    const-string v1, "none"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 371
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_warning_device_attempt_remaining_auto_wipe:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v3, v6, v2

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 374
    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "string"

    .line 374
    invoke-virtual {v6, v5, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 380
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 383
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {p0, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 385
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {p0, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 388
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find the warning on auto wipe string id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 344
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->kg_device_security_remaining_frp:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 345
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 348
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 349
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    .line 348
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 354
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find warning frp string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 315
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->kg_device_security_remaining_reactivation:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 318
    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 321
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 323
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find warning reactivation string id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_1
    return-object p0
.end method

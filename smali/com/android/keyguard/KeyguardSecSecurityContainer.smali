.class public Lcom/android/keyguard/KeyguardSecSecurityContainer;
.super Lcom/android/keyguard/KeyguardSecurityContainer;
.source "KeyguardSecSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFactoryResetProtectionType:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsNotiClickedOnShadeLocked:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mRemainingBeforeWipe:I

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xf

    .line 80
    iput p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    .line 97
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$dV4VINQLifs9DpgaI5CdrQm5CYY;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$dV4VINQLifs9DpgaI5CdrQm5CYY;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 505
    new-instance p2, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 921
    new-instance p2, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 112
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string p2, "alarm"

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 116
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateFactoryResetProtectionType()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/systemui/KnoxStateMonitor;->getInstance()Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 123
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/app/AlarmManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method private doWipeOutIfMaxFailedAttemptsSinceBoot()V
    .locals 4

    .line 713
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    .line 715
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    .line 717
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v0

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , failedAttempts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecSecurityView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lt v1, v0, :cond_0

    const-string v0, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    .line 723
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    :cond_0
    return-void
.end method

.method private getCutoutHeight()I
    .locals 1

    .line 904
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 905
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 907
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getSecFailedAttemptsBeforeWipe(ZI)I
    .locals 1

    .line 655
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$dV4VINQLifs9DpgaI5CdrQm5CYY(Lcom/android/keyguard/KeyguardSecSecurityContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->onRotationChanged(I)V

    return-void
.end method

.method private needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 492
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private onRotationChanged(I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 762
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private showWarningAtAutoWipeDialog(II)V
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 707
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showWarningWipeOutDialog(II)V
    .locals 2

    .line 729
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_1

    .line 731
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 734
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 738
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 737
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 741
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateFactoryResetProtectionType()V
    .locals 2

    .line 746
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 748
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFactoryResetProtectionType( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSecSecurityView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateLayoutMargins()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 771
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins(I)V

    return-void
.end method

.method private updateLayoutMargins(I)V
    .locals 9

    .line 775
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 782
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 784
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x10501f5

    if-eqz v1, :cond_3

    move v5, v3

    goto :goto_2

    .line 786
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 788
    :goto_2
    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 790
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v7, :cond_5

    :cond_4
    :goto_3
    move p1, v3

    move v0, p1

    move v5, v0

    goto/16 :goto_9

    .line 794
    :cond_5
    sget-boolean v6, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 795
    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move p1, v3

    move v0, p1

    goto/16 :goto_9

    .line 796
    :cond_7
    :goto_5
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v6

    .line 797
    sget v7, Lcom/android/keyguard/R$dimen;->kg_emergency_button_margin_bottom_for_tablet_fingerprint:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v1, :cond_8

    .line 800
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v6, v0

    :cond_8
    if-eqz v1, :cond_9

    move v0, v3

    goto :goto_6

    .line 803
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getCutoutHeight()I

    move-result v0

    :goto_6
    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    goto :goto_3

    .line 829
    :cond_a
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_b

    move p1, v3

    goto :goto_9

    .line 834
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_c

    move v5, v6

    :cond_c
    move p1, v5

    move v5, v3

    goto :goto_9

    .line 840
    :cond_d
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_4

    goto :goto_4

    .line 818
    :cond_e
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_f

    move p1, v5

    move v5, v3

    goto :goto_7

    .line 823
    :cond_f
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_10

    move v5, v6

    :cond_10
    move p1, v3

    :goto_7
    move v8, v5

    move v5, p1

    move p1, v0

    move v0, v8

    goto :goto_9

    .line 808
    :cond_11
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_12

    .line 809
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/2addr v6, v7

    :goto_8
    move v5, v6

    goto :goto_4

    :cond_12
    if-eqz v1, :cond_13

    move v5, v3

    goto :goto_4

    .line 813
    :cond_13
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_8

    .line 851
    :goto_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 852
    invoke-virtual {v1, p1, v3, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 853
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    :goto_a
    return-void
.end method

.method private updateStrongAuthStatus(II)V
    .locals 7

    .line 661
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 663
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 665
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 667
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x1000

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-eqz v1, :cond_a

    :cond_4
    if-lez p2, :cond_a

    const/16 v0, 0xa

    const/4 v2, 0x2

    if-lt p2, v0, :cond_7

    .line 672
    iget p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v0, 0x5

    if-gt p2, v0, :cond_a

    .line 673
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_5

    .line 675
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_5
    if-eqz v4, :cond_6

    .line 678
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_6
    if-eqz v1, :cond_a

    .line 681
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    goto :goto_4

    .line 685
    :cond_7
    iget p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-gt p2, v2, :cond_a

    .line 686
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_8

    .line 688
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_8
    if-eqz v4, :cond_9

    .line 691
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_9
    if-eqz v1, :cond_a

    .line 694
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    .line 481
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 484
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "KeyguardSecSecurityView"

    const-string v0, "getLayoutIdFor"

    .line 602
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    .line 625
    :pswitch_1
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_swipe_view:I

    return p0

    .line 623
    :pswitch_2
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_perso_view:I

    return p0

    .line 619
    :pswitch_3
    sget-boolean p0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz p0, :cond_0

    .line 620
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_puk_view_tmo:I

    goto :goto_0

    .line 621
    :cond_0
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_puk_view:I

    :goto_0
    return p0

    .line 616
    :pswitch_4
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_pin_view_tablet:I

    goto :goto_1

    .line 617
    :cond_1
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_pin_view:I

    :goto_1
    return p0

    .line 629
    :pswitch_5
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    return p0

    .line 627
    :pswitch_6
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_carrier_view:I

    return p0

    .line 640
    :pswitch_7
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_admin_view:I

    return p0

    .line 638
    :pswitch_8
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_ucm_pin_view:I

    return p0

    .line 636
    :pswitch_9
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_knox_guard_view:I

    return p0

    .line 634
    :pswitch_a
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_rmm_view:I

    return p0

    .line 631
    :pswitch_b
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/android/keyguard/R$layout;->keyguard_fmm_view_tablet:I

    goto :goto_2

    .line 632
    :cond_2
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_fmm_view:I

    :goto_2
    return p0

    .line 605
    :pswitch_c
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_direction_lock_view:I

    return p0

    .line 607
    :pswitch_d
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_pattern_view_tablet:I

    goto :goto_3

    .line 608
    :cond_3
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_pattern_view:I

    :goto_3
    return p0

    .line 613
    :pswitch_e
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_4

    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_password_view_tablet:I

    goto :goto_4

    .line 614
    :cond_4
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_password_view:I

    :goto_4
    return p0

    .line 610
    :pswitch_f
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_5

    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_pin_view_tablet:I

    goto :goto_5

    .line 611
    :cond_5
    sget p0, Lcom/android/keyguard/R$layout;->keyguard_sec_pin_view:I

    :goto_5
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method

.method protected getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method protected getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2

    const-string v0, "KeyguardSecSecurityView"

    const-string v1, "getSecurityViewIdForMode"

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-object v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result p0

    return p0

    .line 587
    :pswitch_1
    sget p0, Lcom/android/keyguard/R$id;->keyguard_swipe_view:I

    return p0

    .line 586
    :pswitch_2
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sec_sim_perso_view:I

    return p0

    .line 585
    :pswitch_3
    sget-boolean p0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/keyguard/R$id;->keyguard_sec_sim_puk_view_tmo:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    :goto_0
    return p0

    .line 589
    :pswitch_4
    sget p0, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    return p0

    .line 588
    :pswitch_5
    sget p0, Lcom/android/keyguard/R$id;->keyguard_carrier_view:I

    return p0

    .line 594
    :pswitch_6
    sget p0, Lcom/android/keyguard/R$id;->keyguard_admin_view:I

    return p0

    .line 593
    :pswitch_7
    sget p0, Lcom/android/keyguard/R$id;->keyguard_ucm_pin_view:I

    return p0

    .line 592
    :pswitch_8
    sget p0, Lcom/android/keyguard/R$id;->keyguard_knox_guard_view:I

    return p0

    .line 591
    :pswitch_9
    sget p0, Lcom/android/keyguard/R$id;->keyguard_rmm_view:I

    return p0

    .line 590
    :pswitch_a
    sget p0, Lcom/android/keyguard/R$id;->keyguard_fmm_view:I

    return p0

    .line 584
    :pswitch_b
    sget p0, Lcom/android/keyguard/R$id;->keyguard_direction_view:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic lambda$showDialog$0$KeyguardSecSecurityContainer(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->reset()V

    return-void
.end method

.method public synthetic lambda$showDialog$1$KeyguardSecSecurityContainer(Landroid/content/DialogInterface;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 186
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 130
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    .line 132
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    .line 142
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onFinishInflate()V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 165
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->doWipeOutIfMaxFailedAttemptsSinceBoot()V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method protected reportFailedUnlockAttempt(II)V
    .locals 9

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 281
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    .line 283
    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v3

    if-lez v3, :cond_0

    sub-int v4, v3, v0

    goto :goto_0

    :cond_0
    const v4, 0x7fffffff

    .line 286
    :goto_0
    iput v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    .line 288
    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateStrongAuthStatus(II)V

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportFailedUnlockAttempt   \n failedAttemptsBeforeWipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n mRemainingBeforeWipe  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n failedAttempts: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardSecSecurityView"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v5, 0x5

    if-ge v3, v5, :cond_4

    .line 301
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    if-eqz v3, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/16 v6, -0x2710

    if-eq v3, v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    move v6, v1

    .line 311
    :goto_1
    iget v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-lez v7, :cond_3

    if-nez v2, :cond_4

    .line 312
    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-nez v3, :cond_4

    .line 313
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 314
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-virtual {p0, v0, v3, v6}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_2

    .line 318
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many unlock attempts; user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " will be wiped!"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    .line 324
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    .line 325
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 328
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 331
    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-eq v3, v1, :cond_5

    if-ne v3, v5, :cond_6

    .line 333
    :cond_5
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 336
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showWarningWipeOutDialog(II)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 338
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-ne v2, v1, :cond_7

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 340
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showWarningAtAutoWipeDialog(II)V

    :cond_7
    :goto_3
    if-lez p2, :cond_8

    .line 343
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_8
    return-void
.end method

.method public reset()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 2

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNotiClickedOnShadeLocked= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    return-void
.end method

.method protected showAlmostAtWipeDialog(III)V
    .locals 4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    return-void

    :cond_0
    const/4 p3, 0x0

    if-ne p1, v0, :cond_1

    .line 209
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->kg_sec_1_failed_attempt_almost_at_wipe:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 211
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->kg_sec_1_remaining_count_almost_at_wipe:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_failed_attempts_almost_at_wipe:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 215
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 177
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$oVjRR_BwB9m-T8WRTkw8UEQZ_xI;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$oVjRR_BwB9m-T8WRTkw8UEQZ_xI;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    .line 178
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$CRoR9_oWUtUaOtg-Xde19S5j8sM;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$CRoR9_oWUtUaOtg-Xde19S5j8sM;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    .line 184
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 189
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    .line 194
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method showNextSecurityScreenOrFinish(ZI)Z
    .locals 6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNextSecurityScreenOrFinish("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 361
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p1, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 371
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    move v2, v3

    goto/16 :goto_4

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v0, :cond_3

    .line 375
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_3

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 382
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSmartLock()V

    :cond_4
    move v0, v2

    goto/16 :goto_4

    .line 387
    :cond_5
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v4, :cond_8

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 389
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v1, :cond_6

    .line 391
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    .line 392
    :cond_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_7

    .line 396
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    const-string v4, "2"

    invoke-static {v0, v1, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    .line 400
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_1
    move v0, v2

    :goto_2
    move v5, v3

    move v3, v0

    move v0, v2

    move v2, v5

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_c

    .line 403
    sget-object v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fail safe"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_3

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 425
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 424
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 426
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 427
    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_0

    .line 430
    :cond_9
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v4, :cond_a

    if-eqz v1, :cond_b

    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 431
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 432
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_3

    :pswitch_1
    move v0, v3

    move v2, v0

    goto :goto_4

    :cond_c
    :goto_3
    move v0, v2

    move v2, v3

    move v3, v0

    :goto_4
    if-eqz v3, :cond_e

    if-eqz v2, :cond_d

    .line 446
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 449
    :cond_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, v0, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    if-eqz p1, :cond_e

    const-string p0, "102"

    const-string p1, "1032"

    const-string p2, "1"

    .line 452
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSecurityScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 474
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 476
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method protected showTimeoutDialog(II)V
    .locals 2

    .line 199
    div-int/lit16 p2, p2, 0x3e8

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 200
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(II)V

    return-void
.end method

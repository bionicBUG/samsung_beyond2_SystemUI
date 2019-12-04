.class Lcom/android/keyguard/KeyguardSecSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZI)Z

    return-void
.end method

.method public isVerifyUnlockOnly()Z
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return p0
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 2

    if-eqz p2, :cond_1

    .line 523
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 524
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 525
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    const/high16 v1, 0x20000000

    invoke-static {p3, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "KeyguardSecSecurityView"

    const-string v0, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    .line 529
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/app/AlarmManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 531
    invoke-virtual {p2}, Landroid/app/PendingIntent;->cancel()V

    .line 534
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 535
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$300(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 536
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 537
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string p3, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    .line 538
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "confirm_credentials"

    .line 539
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 540
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x400000

    .line 541
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    .line 542
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p2, p1, p3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->reportFailedUnlockAttempt(II)V

    .line 549
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFailedUnlockAttemptChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 574
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->userActivity()V

    .line 575
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz p0, :cond_0

    .line 508
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

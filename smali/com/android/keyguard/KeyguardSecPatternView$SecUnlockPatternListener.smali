.class public Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;
.super Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecUnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method protected onPatternChecked(IZIZ)V
    .locals 6

    .line 525
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 526
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPatternChecked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " timeoutMs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardSecPatternView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 528
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p2, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_d

    .line 531
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$900(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 534
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object p3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 535
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_6

    :cond_2
    :goto_1
    return-void

    .line 538
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 539
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    .line 540
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p2

    const/4 v0, 0x3

    const/4 v3, -0x1

    if-lt p2, v0, :cond_4

    const p2, 0xc378

    .line 541
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p2, v3, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_2

    :cond_4
    const p2, 0xc36b

    .line 545
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p2, v3, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 552
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    if-eqz p4, :cond_a

    .line 554
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p2, p1, v2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 555
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    .line 556
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1600(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    .line 557
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1600(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/16 p2, 0x8

    if-nez p3, :cond_7

    .line 560
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p4

    if-ne p4, p2, :cond_7

    .line 561
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1100(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 562
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_7
    if-lez p3, :cond_a

    .line 566
    sget-boolean p4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1100(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 567
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 569
    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 570
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p4, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    .line 572
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->notifyKeyguardLockout()V

    .line 574
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto :goto_4

    .line 558
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1700(Lcom/android/keyguard/KeyguardSecPatternView;I)V

    .line 559
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)V

    .line 578
    :cond_a
    :goto_4
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    const-wide/16 v3, 0x7d0

    if-eqz p1, :cond_c

    if-nez p3, :cond_d

    .line 580
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    if-lez p1, :cond_b

    .line 582
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1800(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object p4

    sget v0, Lcom/android/keyguard/R$string;->kg_incorrect_pattern:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    .line 583
    invoke-static {p4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 583
    invoke-virtual {p4, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 582
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 586
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p3, Lcom/android/keyguard/R$string;->kg_incorrect_pattern:I

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2000(Lcom/android/keyguard/KeyguardSecPatternView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    :goto_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    .line 589
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_c
    if-nez p3, :cond_d

    .line 593
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p2, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 594
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_6
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardSecPatternView"

    const-string v1, "onPatternDetected"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V

    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .line 509
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternStart()V

    .line 511
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1300(Lcom/android/keyguard/KeyguardSecPatternView;II)V

    return-void
.end method

.class Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attempt:I

.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;JJ)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 577
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->attemptRemainingBeforeWipe:I

    .line 578
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 606
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 607
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 582
    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 583
    div-int/lit8 p2, p1, 0x3c

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 586
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->attemptRemainingBeforeWipe:I

    if-lez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$002(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->attempt:I

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->attemptRemainingBeforeWipe:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x3c

    const/4 v3, 0x1

    if-le p1, v2, :cond_1

    .line 591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 591
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 596
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 595
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 599
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 601
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    return-void
.end method

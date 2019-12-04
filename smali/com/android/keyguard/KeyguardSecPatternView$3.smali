.class Lcom/android/keyguard/KeyguardSecPatternView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attempt:I

.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;JJ)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 621
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

    .line 623
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 624
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    .line 623
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 655
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 656
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1100(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 662
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 664
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    .line 665
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    .line 667
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    .line 668
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2600(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2500(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2600(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2500(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 628
    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 629
    div-int/lit8 p2, p1, 0x3c

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 632
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

    if-lez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2100(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attempt:I

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->attemptRemainingBeforeWipe:I

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

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2200(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 641
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 638
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2300(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 645
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 643
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 648
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 650
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$3;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2400(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method

.class Lcom/android/keyguard/KeyguardSecSimPukView$2;
.super Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSimLockChangedResponse$0$KeyguardSecSimPukView$2(II)V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$100(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "KeyguardSimPukView"

    if-nez p1, :cond_4

    .line 489
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    .line 490
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 491
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 p2, -0x1

    iput p2, p1, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 492
    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 493
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_UNLOCK_TOAST:Z

    if-eqz p2, :cond_1

    .line 494
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$500(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_lock_accepted:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 495
    :cond_1
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz p2, :cond_2

    .line 496
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$600(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/android/keyguard/R$string;->kg_kor_success_pin_message:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$700(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;)V

    .line 498
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p2, :cond_7

    .line 499
    iget-object p2, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$800(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ForceHideSoftInput"

    .line 500
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_3

    .line 506
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iput-boolean v1, v3, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    if-ne p1, v2, :cond_5

    .line 509
    iget-object p1, v3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v3, p2, v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 512
    :cond_5
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz p1, :cond_6

    .line 513
    iget-object p1, v3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 514
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->card_crash:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-interface {p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 516
    :cond_6
    iget-object p1, v3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 520
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 525
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void
.end method

.method onSimLockChangedResponse(II)V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$2;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

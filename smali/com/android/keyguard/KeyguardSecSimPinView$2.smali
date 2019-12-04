.class Lcom/android/keyguard/KeyguardSecSimPinView$2;
.super Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;
.source "KeyguardSecSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;II)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iput p4, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->val$subId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSimCheckResponse$0$KeyguardSecSimPinView$2(III)V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$302(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$402(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$100(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "KeyguardSecSimPinView"

    if-nez p2, :cond_3

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCheckResponse "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 377
    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 378
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$402(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    .line 379
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$302(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    .line 380
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$502(Lcom/android/keyguard/KeyguardSecSimPinView;Z)Z

    .line 381
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_UNLOCK_TOAST:Z

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$600(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_lock_verified:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p2, :cond_b

    .line 385
    iget-object p2, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$700(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ForceHideSoftInput"

    .line 386
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 389
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p1, v2, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_2

    .line 392
    :cond_3
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p3, v1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$502(Lcom/android/keyguard/KeyguardSecSimPinView;Z)Z

    if-ne p2, v2, :cond_9

    const-string/jumbo p3, "verifyPasswordAndUnlock : PIN_PASSWORD_INCORRECT"

    .line 395
    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    .line 397
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {p3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 398
    :cond_4
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz p3, :cond_5

    .line 399
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_kor_password_wrong_pin_code:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 399
    invoke-interface {p3, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_7

    .line 403
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz p3, :cond_6

    .line 404
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_ctc_password_wrong_pin_code_one:I

    invoke-interface {p3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    .line 407
    :cond_6
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_one:I

    invoke-interface {p3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    .line 411
    :cond_7
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz p3, :cond_8

    .line 412
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_ctc_password_wrong_pin_code_other:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 412
    invoke-interface {p3, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 416
    :cond_8
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_other:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 416
    invoke-interface {p3, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const-string/jumbo p3, "verifyPasswordAndUnlock : Fail - Unknown Error"

    .line 423
    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz p3, :cond_a

    .line 427
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v1, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/android/keyguard/R$string;->card_crash:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_a
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v1, p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 432
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " attemptsRemaining="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_c

    .line 437
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 439
    :cond_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void
.end method

.method onSimCheckResponse(II)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->val$subId:I

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView$2;III)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

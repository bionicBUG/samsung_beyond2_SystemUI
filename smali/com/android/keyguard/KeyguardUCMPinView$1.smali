.class Lcom/android/keyguard/KeyguardUCMPinView$1;
.super Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onVerifyPinResponse$0$KeyguardUCMPinView$1(IILandroid/os/Bundle;)V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPINAndUnlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "mUnlockProgressDialog != null"

    .line 634
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 636
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1502(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$400(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 639
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_1

    .line 640
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 642
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1102(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    .line 643
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 644
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1002(Z)Z

    return-void
.end method

.method onVerifyPinResponse(IIILandroid/os/Bundle;)V
    .locals 1

    .line 630
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$1$2KIAu3R7N2h0omw6N1W1EXfORJw;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$1;IILandroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

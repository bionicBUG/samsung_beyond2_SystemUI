.class Lcom/android/keyguard/KeyguardUCMPinView$2;
.super Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUKAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onVerifyPukResponse$0$KeyguardUCMPinView$2(IILandroid/os/Bundle;)V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 904
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1500(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 906
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 907
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1502(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$400(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, p3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    .line 910
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_1

    .line 911
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 913
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1402(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    .line 914
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 915
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1002(Z)Z

    return-void
.end method

.method onVerifyPukResponse(IIILandroid/os/Bundle;)V
    .locals 1

    .line 902
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$2$KlB26CyOBsIWMNfC_7v-XodImzA;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$2;IILandroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

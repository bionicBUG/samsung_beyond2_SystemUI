.class Lcom/android/keyguard/KeyguardSecSimPinView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged(subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardSecSimPinView"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object p2, Lcom/android/keyguard/KeyguardSecSimPinView$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    goto/16 :goto_1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$200(Lcom/android/keyguard/KeyguardSecSimPinView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_1

    .line 129
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_1

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    goto/16 :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$100(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$100(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-eqz p1, :cond_b

    .line 116
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 118
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$100(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    .line 121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->verifyPasswordAndUnlock()V

    goto/16 :goto_1

    .line 124
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    goto :goto_1

    .line 107
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_5

    .line 108
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    goto :goto_1

    .line 87
    :cond_6
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, p2, :cond_7

    const-string p2, "Card Remove during SIM PIN "

    .line 88
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_7
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, p2, :cond_8

    const-string p2, "Card READY during SIM PIN "

    .line 90
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_8
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v2, p2, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_9

    .line 93
    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$000(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p1, "Dismiss SIM PIN View"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 97
    :cond_9
    sget-object p2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, p2, :cond_a

    .line 98
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget p2, p2, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq p2, p1, :cond_a

    const-string p0, "READY already came. Skip this"

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    :cond_b
    :goto_1
    return-void
.end method

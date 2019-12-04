.class Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_NEW_PIN:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field final UNKNOWN:I

.field private mRound:I

.field private mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 1

    .line 687
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 688
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x1

    .line 689
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x2

    .line 690
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_NEW_PIN:I

    const/4 v0, 0x3

    .line 691
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x4

    .line 692
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->DONE:I

    const/4 v0, 0x5

    .line 693
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->UNKNOWN:I

    .line 694
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 p1, -0x1

    .line 695
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$1;)V
    .locals 0

    .line 687
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method private getDetailErrorMessage(I)Ljava/lang/String;
    .locals 5

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDetailErrorMessage errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-nez p1, :cond_0

    .line 706
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/keyguard/R$string;->kg_ucm_unknown_error_occurred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 711
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1600(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 713
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1700()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 715
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in getDetailErrorMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 723
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method getState()I
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "StateMachine.getState called"

    .line 698
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return p0
.end method

.method setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .locals 8

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    .line 732
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    .line 733
    iget p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/16 v4, 0x8

    if-eq p1, v3, :cond_d

    const/16 v5, 0x20

    const/4 v6, 0x0

    const-string v7, "\n"

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p0, "unknown status nothing to do"

    .line 814
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    .line 787
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2400(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x21

    if-ne p2, p1, :cond_0

    .line 790
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_ucm_password_wrong_puk_code:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 793
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_puk_locked_message:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 794
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p2, v5, :cond_2

    .line 796
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1, v6}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 799
    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_1

    .line 802
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->lockscreen_smartcard_expired:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "pinExpireMessage"

    .line 803
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    .line 807
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 808
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2500(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    .line 742
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v5, :cond_5

    .line 744
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 745
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 747
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 748
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    .line 751
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    .line 755
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_8

    if-nez p2, :cond_7

    .line 758
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2100(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2200(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 763
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    if-nez p2, :cond_c

    if-nez p4, :cond_9

    const-string p1, "failed to get the generatePassword values"

    .line 767
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/keyguard/R$string;->kg_ucm_unknown_error_occurred:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 769
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    const-string p1, "bytearrayresponse"

    .line 773
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "errorresponse"

    .line 774
    invoke-virtual {p4, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_b

    .line 775
    array-length p3, p1

    if-gtz p3, :cond_a

    goto :goto_3

    .line 780
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2300(Lcom/android/keyguard/KeyguardUCMPinView;[BI)V

    goto :goto_4

    .line 776
    :cond_b
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 777
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 782
    :cond_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const-string p1, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    .line 735
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 737
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    .line 738
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2000(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method verifyPUKAndUpdateUI()V
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "StateMachine.verifyPUKAndUpdateUI called"

    .line 820
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    return-void

    .line 826
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_1

    move v0, v1

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2800(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 845
    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    .line 846
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_unlocking:I

    .line 847
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2900(Lcom/android/keyguard/KeyguardUCMPinView;)V

    goto :goto_0

    .line 849
    :cond_2
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    .line 850
    sget v1, Lcom/android/keyguard/R$string;->kg_ucm_invalid_confirm_pin_hint:I

    .line 851
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_puk_enter_pin_hint:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2700(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    iput v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    .line 838
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_enter_confirm_pin_hint:I

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_invalid_pin_hint:I

    goto :goto_0

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$2600(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 829
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    .line 830
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_puk_enter_pin_hint:I

    goto :goto_0

    .line 832
    :cond_6
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_invalid_puk_hint:I

    .line 857
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v2, v3, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    .line 860
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 862
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1900(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    return-void
.end method

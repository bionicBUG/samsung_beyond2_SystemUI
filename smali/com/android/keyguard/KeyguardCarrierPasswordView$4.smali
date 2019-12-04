.class Lcom/android/keyguard/KeyguardCarrierPasswordView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$600(Lcom/android/keyguard/KeyguardCarrierPasswordView;Z)V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$500(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$702(Lcom/android/keyguard/KeyguardCarrierPasswordView;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$500(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object p0

    sget p1, Lcom/android/keyguard/R$string;->kg_carrier_lock_too_many_failed_attempts:I

    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    return-void
.end method

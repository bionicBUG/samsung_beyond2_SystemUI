.class abstract Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
.super Ljava/lang/Thread;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 518
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    .line 519
    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$KeyguardUCMPinView$CheckUcmPuk([ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 543
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->onVerifyPukResponse(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$run$1$KeyguardUCMPinView$CheckUcmPuk()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->onVerifyPukResponse(IIILandroid/os/Bundle;)V

    return-void
.end method

.method abstract onVerifyPukResponse(IIILandroid/os/Bundle;)V
.end method

.method public run()V
    .locals 6

    const-string v0, " "

    const-string v1, "KeyguardUCMPinView"

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPin:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1300(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPukReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1000()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v5, "In race condition, stop unlock operation"

    if-nez v0, :cond_0

    .line 532
    :try_start_1
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1402(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-void

    .line 536
    :cond_0
    aget v0, v2, v4

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1200(I)Landroid/os/Bundle;

    move-result-object v0

    .line 537
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1000()Z

    move-result v4

    if-nez v4, :cond_1

    .line 538
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->access$1402(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-void

    .line 543
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$CheckUcmPuk$y6wQhomcyE1rpw6-V4vdqJTqtwE;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$CheckUcmPuk$y6wQhomcyE1rpw6-V4vdqJTqtwE;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;[ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RemoteException for supplyPukReportResult:"

    .line 545
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$CheckUcmPuk$YNYMYvDSNdD7Pru6430bhr7QCe4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$CheckUcmPuk$YNYMYvDSNdD7Pru6430bhr7QCe4;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.class abstract Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SecCheckSimPuk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 399
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$KeyguardSecSimPukView$SecCheckSimPuk([I)V
    .locals 2

    const/4 v0, 0x0

    .line 413
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(II)V

    return-void
.end method

.method public synthetic lambda$run$1$KeyguardSecSimPukView$SecCheckSimPuk()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(II)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "KeyguardSimPukView"

    :try_start_0
    const-string v1, "call supplyPukReportResult()"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "phone"

    .line 407
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPukReportResult returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$T6n0iMSPaZVqUhWgwc8j91UdaWs;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$T6n0iMSPaZVqUhWgwc8j91UdaWs;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteException for supplyPukReportResult:"

    .line 416
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$o7ljctZ2gXNpZiZwEKFrkljhLI0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$SecCheckSimPuk$o7ljctZ2gXNpZiZwEKFrkljhLI0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.class Lcom/android/keyguard/KeyguardRMMView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;JJ)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMView;->resetState()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 315
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 316
    div-int/lit8 p2, p1, 0x3c

    const/4 v0, 0x0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    if-le p1, v1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 318
    invoke-virtual {p0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$4;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 322
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

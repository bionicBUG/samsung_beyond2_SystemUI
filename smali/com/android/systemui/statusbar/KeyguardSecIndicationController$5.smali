.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->startCountdownTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1050
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->attemptRemainingBeforeWipe:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1102(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1083
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public onTick(J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 1054
    div-long/2addr p1, v0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1055
    div-int/lit8 p2, p1, 0x3c

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1058
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->attemptRemainingBeforeWipe:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->attemptRemainingBeforeWipe:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v3, 0x3c

    if-le p1, v3, :cond_1

    .line 1062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/2addr p2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1064
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1062
    invoke-virtual {v0, v3, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-gt p1, v3, :cond_2

    if-lez p1, :cond_2

    .line 1066
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 1067
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1066
    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

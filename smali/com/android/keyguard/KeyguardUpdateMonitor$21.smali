.class Lcom/android/keyguard/KeyguardUpdateMonitor$21;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 6321
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 2

    .line 6386
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    const-string v0, "KeyguardIris"

    if-nez p1, :cond_0

    const-string p0, "onAuthenticationAcquired: Iris is not running"

    .line 6387
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6390
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6391
    iput-boolean v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisReady:Z

    const-string p1, "Iris is ready"

    .line 6392
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6394
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    :cond_1
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 6324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    const-string v1, "KeyguardIris"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationError: Iris is not running"

    .line 6325
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6328
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 6332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_iris_not_working_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6333
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_biometric_error_restart_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const-string p2, ""

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 6337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9808(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    .line 6338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRIS_ERROR_EYE_SAFETY_TIMEOUT count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6340
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisForceCancel(Z)V

    .line 6341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 6342
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9900(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    .line 6375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    const-string v1, "KeyguardIris"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationFailed: Iris is not running"

    .line 6376
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onAuthenticationFailed"

    .line 6379
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 6381
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationFailed(Z)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 6347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    const-string v1, "KeyguardIris"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationHelp: Iris is not running"

    .line 6348
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6352
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 1

    .line 6357
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    const-string v0, "KeyguardIris"

    if-nez p1, :cond_0

    const-string p0, "onAuthenticationSucceeded: Iris is not running"

    .line 6358
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "onAuthenticationSucceeded"

    .line 6363
    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    .line 6366
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6367
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisAuthenticated(Z)V

    .line 6368
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 6369
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$10000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 6370
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onIRImage([BII)V
    .locals 0

    return-void
.end method

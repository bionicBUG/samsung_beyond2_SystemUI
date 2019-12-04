.class public Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "KeyguardBiometricsCountDownTimer.java"


# instance fields
.field private mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mBiometricType:I

.field private final mContext:Landroid/content/Context;

.field private mFailedAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 27
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 28
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 30
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p6

    invoke-virtual {p1, p6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p6

    iput p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 32
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "KeyguardBiometricsCountDownTimer( millisInFuture = "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , countDownInterval = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , mFailedAttempts = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mBiometricType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBiometricsCountDownTimer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string v1, "onFinish()"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 42
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 44
    iget p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/16 v3, 0x10

    if-eq p2, v3, :cond_2

    const/16 v3, 0x100

    if-eq p2, v3, :cond_1

    const/16 v3, 0x1000

    if-eq p2, v3, :cond_0

    .line 66
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_countdown_by_biometrics:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 66
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_countdown_by_ib:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 61
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_countdown_by_face:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 56
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_countdown_by_iris:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 51
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_countdown_by_fingerprint:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 46
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_4

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string p0, "KeyguardBiometricsCountDownTimer"

    const-string p1, "onTick ( mBiometricMessageArea is null )"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v1, "stop()"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

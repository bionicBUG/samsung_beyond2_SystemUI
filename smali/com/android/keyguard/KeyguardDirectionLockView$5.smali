.class Lcom/android/keyguard/KeyguardDirectionLockView$5;
.super Landroid/os/Handler;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/Looper;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 450
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 451
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 452
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$200(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 454
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/16 v3, 0x23

    if-ne p1, v3, :cond_5

    .line 455
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$502(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 456
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 458
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 459
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 460
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2300(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2408(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    .line 462
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    .line 466
    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2600(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    goto/16 :goto_1

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2800(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2702(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;

    if-lez v0, :cond_3

    .line 473
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2300(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 474
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    goto :goto_0

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 478
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2900(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    .line 479
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    .line 480
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    goto/16 :goto_1

    .line 486
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3000(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3100(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 491
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3300(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2700(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3200(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2700(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 494
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    const p1, 0xc371

    const/4 v0, -0x1

    .line 495
    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p1, v0, v1}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 497
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3400(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x25

    if-ne p1, v0, :cond_6

    const-string p1, "KeyguardDirectionLock"

    const-string/jumbo v0, "verifyPasswordAndUnlock"

    .line 501
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 503
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2402(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    .line 504
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_6
    :goto_1
    return-void
.end method

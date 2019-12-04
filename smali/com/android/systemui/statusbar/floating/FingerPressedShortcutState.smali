.class public Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;
.super Lcom/android/systemui/statusbar/floating/ShortcutState;
.source "FingerPressedShortcutState.java"


# instance fields
.field private mDelayedShowingRunnable:Ljava/lang/Runnable;

.field private mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    .line 28
    new-instance p1, Lcom/android/systemui/statusbar/floating/-$$Lambda$FingerPressedShortcutState$g8ujv8VcvypaMY9YcceFUqRhaiQ;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FingerPressedShortcutState$g8ujv8VcvypaMY9YcceFUqRhaiQ;-><init>(Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    return-void
.end method


# virtual methods
.method public enterState()V
    .locals 3

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->setForceExpandedByShortcut(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public exitState()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mDelayedShowingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->setForceExpandedByShortcut(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->updateBlueAndDim(Z)V

    return-void
.end method

.method public isPressed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$FingerPressedShortcutState()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->updateBlueAndDim(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->showAppIcon()V

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->showShortcut()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 68
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v0, v3, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->focusShortcut(Landroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-eq v0, p1, :cond_4

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationX()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getCenterLocationY()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->focusEffect(II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->moveEffect(II)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;->mFocusedShortcutView:Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->hideEffect()V

    .line 88
    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getFloatingShortcutAreaView()Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :cond_4
    :goto_1
    return v2
.end method

.method public sendAppLaunchLogging()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1071"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

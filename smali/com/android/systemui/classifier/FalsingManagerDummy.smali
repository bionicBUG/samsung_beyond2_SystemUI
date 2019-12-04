.class public Lcom/android/systemui/classifier/FalsingManagerDummy;
.super Ljava/lang/Object;
.source "FalsingManagerDummy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "FALSING MANAGER is disabled by SEC !"

    .line 143
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isClassiferEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFalseTouch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 0

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    return-void
.end method

.method public onQsDown()V
    .locals 0

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    return-void
.end method

.method public onSucccessfulUnlock()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

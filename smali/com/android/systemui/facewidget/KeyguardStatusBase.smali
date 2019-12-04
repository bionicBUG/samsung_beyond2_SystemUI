.class public interface abstract Lcom/android/systemui/facewidget/KeyguardStatusBase;
.super Ljava/lang/Object;
.source "KeyguardStatusBase.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public abstract animate()Landroid/view/ViewPropertyAnimator;
.end method

.method public abstract dozeTimeTick()V
.end method

.method public getClockPreferredY(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentClockType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getHeight()I
.end method

.method public getMinTopMargin(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getVisibility()I
.end method

.method public hasCustomClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setAlpha(F)V
.end method

.method public setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public abstract setDozing(Z)V
.end method

.method public setExpandState(ZI)V
    .locals 0

    return-void
.end method

.method public abstract setImportantForAccessibility(I)V
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    return-void
.end method

.method public setPulsing(Z)V
    .locals 0

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    return-void
.end method

.method public abstract setVisibility(I)V
.end method

.method public updateCMAS(Z)V
    .locals 0

    return-void
.end method

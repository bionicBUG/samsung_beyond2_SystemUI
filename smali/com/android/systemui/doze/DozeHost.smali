.class public interface abstract Lcom/android/systemui/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHost$PulseCallback;,
        Lcom/android/systemui/doze/DozeHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract dozeTimeTick()V
.end method

.method public abstract extendPulse(I)V
.end method

.method public abstract getNotificationPanelView()Landroid/view/ViewGroup;
.end method

.method public abstract isBlockingDoze()Z
.end method

.method public abstract isOccludedstate()Z
.end method

.method public abstract isPowerSaveActive()Z
.end method

.method public abstract isProvisioned()Z
.end method

.method public abstract isPulsingBlocked()Z
.end method

.method public abstract isUnLockedstate()Z
.end method

.method public abstract onSlpiTap(FF)V
.end method

.method public abstract pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract requestActiveNotifications()V
.end method

.method public abstract setAnimateScreenOff(Z)V
.end method

.method public abstract setAnimateWakeup(Z)V
.end method

.method public setAodDimmingScrim(F)V
    .locals 0

    return-void
.end method

.method public setBottomDozeArea(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract setDisplayBlanking(Z)V
.end method

.method public abstract setDozeScreenBrightness(I)V
.end method

.method public abstract startDozing()V
.end method

.method public abstract stopDozing()V
.end method

.method public abstract updateAODWindowLayoutParams()V
.end method

.class public interface abstract Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;
.super Ljava/lang/Object;
.source "PluginLockBasicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract getMode()I
.end method

.method public abstract getServiceType()I
.end method

.method public abstract onAodTransitionEnd()V
.end method

.method public abstract onDensityOrFontScaleChanged()V
.end method

.method public abstract onEventReceived(Landroid/os/Bundle;)V
.end method

.method public abstract onFolderStateChanged(Z)V
.end method

.method public abstract onLocaleChanged()V
.end method

.method public abstract onLockWallpaperChanged(I)V
.end method

.method public abstract onPluginLockModeChanged(Z)V
.end method

.method public abstract onSemBackupStatusChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onStartedGoingToSleep(Z)V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAllowedNumber(I)V
.end method

.method public abstract setBarState(I)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V
.end method

.method public abstract setPanelView(Landroid/view/ViewGroup;)V
.end method

.method public abstract setQsExpansion(F)V
.end method

.method public abstract updateWhiteWallpaperState(Z)V
.end method

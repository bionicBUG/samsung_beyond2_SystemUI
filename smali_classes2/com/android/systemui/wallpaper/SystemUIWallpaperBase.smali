.class public interface abstract Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;
.super Ljava/lang/Object;
.source "SystemUIWallpaperBase.java"


# virtual methods
.method public abstract cleanUp()V
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onDlsViewModeChanged(IZ)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onUnlock()V
.end method

.method public abstract reset()V
.end method

.method public abstract setKeyguardOccluded(Z)V
.end method

.method public abstract update()V
.end method

.method public abstract updateBlurState(Z)V
.end method

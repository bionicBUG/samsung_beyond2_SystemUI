.class public Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.super Landroid/widget/FrameLayout;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurDisplayInfo:Landroid/view/DisplayInfo;

.field protected mDensity:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mFontScale:F

.field protected mIsPreview:Z

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field protected mResumed:Z

.field protected mUnlockStarted:Z

.field protected mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string v0, "SystemUIWallpaper"

    .line 55
    iput-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    .line 57
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 185
    new-instance v2, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/SystemUIWallpaper;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 61
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    .line 63
    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez p3, :cond_0

    .line 64
    invoke-static {p1}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    .line 67
    :cond_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 68
    iget p3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    .line 69
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    .line 71
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p3, "display"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->updateDisplayInfo()V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_3

    .line 79
    iget-object p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    .line 82
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    .line 84
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p1, Landroid/view/DisplayInfo;->rotation:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 86
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceRotation="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mMetricsWidth="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mMetricsHeight="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p3, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    .line 88
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    :cond_3
    if-eqz p2, :cond_4

    .line 93
    iput-object p2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    :cond_4
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "SystemUIWallpaper"

    const-string v1, "onApplyWindowInsets"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 101
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 172
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 173
    iget v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDensity:I

    .line 175
    iput v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mFontScale:F

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 109
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    :cond_0
    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onUnlock()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUnlockStarted:Z

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateBlurState(Z)V
    .locals 0

    return-void
.end method

.method protected updateDisplayInfo()V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    .line 199
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "ScreenCaptureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenCaptureHelper"


# instance fields
.field protected mBuiltInDisplayId:I

.field protected mBundle:Landroid/os/Bundle;

.field protected mCaptureDisplay:I

.field protected mCaptureOrigin:I

.field protected mCaptureSharedBundle:Landroid/os/Bundle;

.field protected mCaptureType:I

.field protected mDegrees:F

.field protected mDisplay:Landroid/view/Display;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mHelperContext:Landroid/content/Context;

.field protected mNavigationBarHeight:I

.field protected mNavigationBarVisible:Z

.field protected mRectToCapture:Landroid/graphics/Rect;

.field protected mSafeInsetBottom:I

.field protected mSafeInsetLeft:I

.field protected mSafeInsetRight:I

.field protected mSafeInsetTop:I

.field protected mScreenHeight:I

.field protected mScreenNativeHeight:F

.field protected mScreenNativeWidth:F

.field protected mScreenWidth:I

.field protected mStackBounds:Landroid/graphics/Rect;

.field protected mStatusBarHeight:I

.field protected mStatusBarVisible:Z

.field protected mSweepDirection:I

.field protected mWindowMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationWindowFlag()I
    .locals 0

    const/16 p0, 0x508

    return p0
.end method

.method public getAnimationWindowType()I
    .locals 0

    const/16 p0, 0x968

    return p0
.end method

.method protected getBuiltInDisplayId()I
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 328
    :goto_0
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBuiltInDisplayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCaptureSharedBundle()Landroid/os/Bundle;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureSharedBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method protected getCurrentDisplay()Landroid/view/Display;
    .locals 1

    .line 355
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 356
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method protected getDegrees(Landroid/view/Display;)F
    .locals 0

    .line 351
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegreesForRotation(I)F

    move-result p0

    return p0
.end method

.method protected getDegreesForRotation(I)F
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    return p0
.end method

.method protected getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 333
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    return p0
.end method

.method public getSafeInsetBottom()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    return p0
.end method

.method public getSafeInsetLeft()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    return p0
.end method

.method public getSafeInsetRight()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    return p0
.end method

.method public getSafeInsetTop()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    return p0
.end method

.method public getScreenCaptureDisplay()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    return p0
.end method

.method public getScreenCaptureOrigin()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    return p0
.end method

.method public getScreenCaptureType()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    return p0
.end method

.method public getScreenDegrees()F
    .locals 0

    .line 148
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    return p0
.end method

.method public getScreenNativeHeight()F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    return p0
.end method

.method public getScreenNativeWidth()F
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    return p0
.end method

.method public getScreenshotMaxLayer()I
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopCaptured(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method protected getScreenshotMaxLayerInKnoxDesktop()I
    .locals 0

    const p0, 0x4baef

    return p0
.end method

.method public getScreenshotMinLayer()I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    return p0
.end method

.method public initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallizeCaptureType()V

    .line 59
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const/4 p1, 0x1

    const-string/jumbo v0, "sweepDirection"

    .line 61
    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    const/4 v0, 0x0

    const-string v1, "capturedDisplay"

    .line 62
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    const-string v1, "capturedOrigin"

    .line 63
    invoke-virtual {p4, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    const-string v1, "safeInsetLeft"

    .line 64
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    const-string v1, "safeInsetTop"

    .line 65
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    const-string v1, "safeInsetRight"

    .line 66
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    const-string v1, "safeInsetBottom"

    .line 67
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    const-string v1, "captureSharedBundle"

    .line 68
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureSharedBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "statusBarHeight"

    .line 69
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    const-string v1, "navigationBarHeight"

    .line 70
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    const-string/jumbo v0, "stackBounds"

    .line 71
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStackBounds:Landroid/graphics/Rect;

    .line 72
    iput-boolean p2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    .line 73
    iput-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    .line 74
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mWindowMode:I

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallizeScreenshotVariable()V

    .line 77
    sget-object p1, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initiallize() mCaptureType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSweepDirection:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCaptureDisplay:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCaptureOrigin:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStatusBarHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mNavigationBarHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStatusBarVisible:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mNavigationBarVisible:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBuiltInDisplayId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetLeft:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetRight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetBottom:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStackBounds:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mWindowMode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mWindowMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDegrees:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initiallizeCaptureType()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    return-void
.end method

.method protected initiallizeScreenshotVariable()V
    .locals 6

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 242
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    .line 243
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    .line 244
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 245
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 246
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegrees(Landroid/view/Display;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    .line 247
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiallizeScreenshotVariable() mDegrees = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 250
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    aput v2, v0, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 251
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 253
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 254
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 255
    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v1

    .line 256
    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v3

    .line 257
    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 258
    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 261
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->isSystemUIExcluded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 264
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    goto :goto_1

    :cond_2
    move v2, v1

    .line 265
    :goto_1
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    .line 266
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    .line 268
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    float-to-int v3, v3

    if-eqz v3, :cond_5

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 290
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    int-to-float v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    goto :goto_2

    .line 277
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 281
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 282
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    int-to-float v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    goto :goto_2

    .line 270
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 293
    :goto_2
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRectToCapture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getBuiltInDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    return-void
.end method

.method public isNavigationBarVisible()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    return p0
.end method

.method public isShowScreenshotAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStatusBarVisible()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    return p0
.end method

.method protected isSystemUIExcluded()Z
    .locals 10

    .line 300
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.captureplugin"

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "content://com.samsung.android.app.captureplugin.capturepluginprovider"

    const-string v2, "isSystemUIExcluded"

    const/4 v3, 0x0

    .line 309
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 310
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 311
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_2

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    move v1, p0

    .line 314
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemUIExcluded : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v3, :cond_3

    .line 320
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 317
    :try_start_1
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :goto_2
    if-eqz v3, :cond_4

    .line 320
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

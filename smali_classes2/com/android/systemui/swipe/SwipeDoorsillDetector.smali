.class public Lcom/android/systemui/swipe/SwipeDoorsillDetector;
.super Ljava/lang/Object;
.source "SwipeDoorsillDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;,
        Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field private mDistance:D

.field private mIntercepting:Z

.field private mIsDynamicLockEnabled:Z

.field private mIsMultiTouch:Z

.field private mIsTouching:Z

.field private mNonSwipeMode:I

.field private mStartX:F

.field private mStartY:F

.field private mSwipeUnlockRadius:I

.field private mTouchSlop:I

.field private mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

.field private mUnlockExecuted:Z

.field private mUserActivityInvokedTime:J

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    .line 57
    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    .line 57
    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    .line 90
    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->initDimens()V

    return-void
.end method

.method private getAngle(DDDD)D
    .locals 0

    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    .line 239
    invoke-static {p7, p8, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
    .locals 6

    .line 243
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNonSwipeModeAngle()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v0

    cmpl-double p0, p1, v2

    if-gez p0, :cond_4

    const-wide v2, -0x3f99800000000000L    # -180.0

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-double v2, v0

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_1

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_1

    .line 247
    sget-object p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object p0

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_2

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_2

    .line 249
    sget-object p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object p0

    :cond_2
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_3

    add-double/2addr v0, v2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_3

    .line 251
    sget-object p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object p0

    .line 253
    :cond_3
    sget-object p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object p0

    .line 245
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object p0
.end method

.method private initDynamicLock()V
    .locals 1

    .line 257
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNonSwipeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    :cond_0
    return-void
.end method

.method private isLoggableEvent(I)Z
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUnlockPossible()Z
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 291
    iget v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUnlockPossible(): mStartX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mStartY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mIsMultiTouch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mUnlockExecuted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isDeviceInteractive="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SwipeDoorsillDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private unlockExecute()V
    .locals 2

    const-string v0, "SwipeDoorsillDetector"

    const-string v1, "unlockExecute()"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUnlock()V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onUnlockExecuted()V

    return-void
.end method

.method private userActivityForMove()V
    .locals 6

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x9c4

    sub-long v2, v0, v2

    .line 283
    iget-wide v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v2}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->callUserActivity()V

    .line 285
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public initDimens()V
    .locals 4

    .line 311
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 313
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40900000    # 4.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40600000    # 3.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const v2, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const v1, 0x3f333333    # 0.7f

    .line 315
    :goto_0
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    .line 316
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 109
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const-string v2, "SwipeDoorsillDetector"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "onTouchEvent(): Unlock is started already"

    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 115
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    if-nez v1, :cond_3

    .line 116
    invoke-direct {p0, v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent(): mIntercepting is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    .line 122
    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    invoke-direct {p0, v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "isSupportSimPermDisabled!!"

    .line 125
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4

    :cond_5
    if-eqz v0, :cond_18

    const/4 v1, 0x2

    if-eq v0, v4, :cond_12

    if-eq v0, v1, :cond_a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    const/4 v5, 0x5

    if-eq v0, v5, :cond_6

    goto/16 :goto_1

    .line 132
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v1, :cond_7

    move v3, v4

    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent(): ACTION_CANCEL mDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v4, :cond_9

    .line 195
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_9
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    goto/16 :goto_1

    .line 152
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    if-nez v0, :cond_b

    return v3

    .line 155
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->userActivityForMove()V

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 159
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v9, v2

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    .line 161
    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    if-eqz v3, :cond_19

    .line 164
    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    float-to-double v6, v3

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    float-to-double v8, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-double v12, v3

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getAngle(DDDD)D

    move-result-wide v5

    .line 165
    iget-wide v7, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    int-to-double v9, v3

    cmpl-double v3, v7, v9

    if-lez v3, :cond_10

    .line 166
    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    if-gez v0, :cond_c

    .line 167
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v3

    sget-object v7, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 168
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 169
    :cond_c
    iget v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_d

    if-lez v0, :cond_d

    .line 170
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 171
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 172
    :cond_d
    iget v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    if-gez v2, :cond_e

    .line 173
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 175
    :cond_e
    iget v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f

    if-lez v2, :cond_f

    .line 176
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 179
    :cond_f
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 182
    :cond_10
    iget v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    .line 183
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 185
    :cond_11
    sget-object v0, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_1

    .line 202
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent(): ACTION_UP (T/D/R)="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->callUserActivity()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-eqz v0, :cond_13

    sget-object v5, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-ne v0, v5, :cond_16

    .line 207
    :cond_13
    iget-wide v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iget v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    int-to-double v7, v0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_14

    .line 208
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onAffordanceTap()V

    goto :goto_0

    .line 209
    :cond_14
    iget v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    int-to-double v7, v0

    cmpg-double v0, v7, v5

    if-gez v0, :cond_15

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isUnlockPossible()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "SwipeDoorsillDetector#unlockExecute"

    .line 211
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->unlockExecute()V

    .line 216
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 219
    :cond_15
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->reset()V

    .line 222
    :cond_16
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v1, :cond_17

    move v3, v4

    :cond_17
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_18
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    .line 138
    iput-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->initDynamicLock()V

    .line 231
    :cond_19
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return v4
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const-wide/16 v1, 0x0

    .line 266
    iput-wide v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const/high16 v1, -0x40800000    # -1.0f

    .line 267
    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    .line 268
    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    .line 272
    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    .line 273
    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    return-void
.end method

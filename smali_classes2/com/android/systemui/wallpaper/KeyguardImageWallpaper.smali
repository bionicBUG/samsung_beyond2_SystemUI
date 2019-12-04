.class public Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/Drawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# static fields
.field public static final SUPPORT_MGS_LSS:Z


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentUserId:I

.field private mCurrentWallpaperId:I

.field private mCurrentWhich:I

.field private mDarkFilterOn:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field private mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastBottom:I

.field private mLastCommand:Ljava/lang/String;

.field private mLastMultipleWallpaperSwitchedTime:J

.field private mLastRight:I

.field private mNeedToRedraw:Z

.field mNightModeObserver:Landroid/database/ContentObserver;

.field private mNightModeOn:Z

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mShouldEnableScreenRotation:Z

.field private mSmartCroppedResult:Landroid/graphics/Rect;

.field private mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

.field private mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field private mUpdateWallpaperSequence:I

.field private mUseCache:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperUpdator:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 151
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    .line 152
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mygalaxystories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->SUPPORT_MGS_LSS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    .line 93
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(F)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 117
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 118
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 131
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    .line 134
    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 135
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWallpaperId:I

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    .line 156
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 157
    iput-wide v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastMultipleWallpaperSwitchedTime:J

    .line 165
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDarkFilterOn:Z

    .line 1396
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$4;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardImageWallpaper: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , useCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardImageWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const-string v1, "wallpaper"

    .line 186
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 187
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    .line 188
    iput p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 189
    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {p3, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWallpaperId:I

    const/4 p3, 0x1

    if-eqz p4, :cond_0

    .line 190
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p4

    if-nez p4, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    .line 192
    new-instance p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-direct {p4, p1, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 193
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 196
    new-instance p2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 197
    new-instance p2, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 199
    sget-boolean p2, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "KeyguardImageWallpaper: recycle cache"

    .line 200
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_2

    move v0, p3

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    .line 205
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_night_theme_wallpaper"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return p0
.end method

.method static synthetic access$004(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateNightFilter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->applyOldBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isCustom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private applyOldBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    const-string v1, "KeyguardImageWallpaper"

    if-eqz v0, :cond_0

    .line 448
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const-string p1, "set matrix to old"

    .line 449
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->startTransitionAnimation()V

    goto :goto_0

    :cond_0
    const-string p1, "switch to new wallpaper immediately, not in interactive mode"

    .line 453
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-nez p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private canRotate()Z
    .locals 7

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1260
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1266
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    const-string v3, "lockscreen_wallpaper_transparent"

    if-eqz v0, :cond_3

    .line 1267
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    const/16 v4, 0x10

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1273
    :cond_4
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isCustom(Ljava/lang/String;)Z

    move-result v3

    .line 1276
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v4

    .line 1278
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v0}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper(Z)Z

    move-result v0

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToSmartCrop: which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , isCustomWallpaper = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " , isDynamicWallpaperEnabled = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " , isMultipleWallpaperEnabled = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "KeyguardImageWallpaper"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1214
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1215
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1217
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDeviceDensity deviceHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " deviceWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " deviceRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bitmapWidth="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bitmapHeight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "KeyguardImageWallpaper"

    .line 1219
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    .line 1227
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1229
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_0
    if-ge v2, v4, :cond_1

    if-ge v1, v3, :cond_1

    int-to-float v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 1236
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1238
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize scale down.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method private checkPreCondition()Z
    .locals 4

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "checkPreCondition()"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "cached wallpaper is null or is recycled"

    .line 275
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeight()  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1, p0, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "checkPreCondition(), getHeight() is same with statusBar height."

    .line 281
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 285
    :cond_1
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "mViewWidth == 0 || mViewHeight == 0"

    .line 286
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 626
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method private init()Z
    .locals 8

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "init()"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->checkPreCondition()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "init() Fail to check precondition"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 300
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    .line 301
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    const/4 p0, 0x0

    return p0

    .line 305
    :cond_0
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 306
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 312
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int v3, v1, v2

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v3, v6, :cond_1

    int-to-float v1, v2

    int-to-float v2, v5

    div-float/2addr v1, v2

    mul-float/2addr v1, v7

    goto :goto_0

    :cond_1
    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float v1, v2, v7

    .line 317
    :goto_0
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 318
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    .line 320
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    .line 321
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    .line 322
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    .line 324
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 325
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmapWidth = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmapHeight = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewWidth = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewHeight = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method private isCustom()Z
    .locals 1

    const-string v0, "lockscreen_wallpaper_transparent"

    .line 1289
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isCustom(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCustom(Ljava/lang/String;)Z
    .locals 1

    .line 1293
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFbeForSubUser()Z
    .locals 3

    const/4 v0, 0x0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/16 v2, 0x12

    .line 604
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p0

    .line 606
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    const-string v2, "MULTIPLE"

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSubUser()Z
    .locals 0

    .line 594
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private recycleCaches()V
    .locals 2

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycleCaches: mCurrentWhich="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 800
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 1250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    .line 1251
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private setMDMFileObserver(Ljava/lang/String;)V
    .locals 2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observing path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 866
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 882
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private startTransitionAnimation()V
    .locals 4

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "startTransitionAnimation: "

    .line 1298
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-nez v0, :cond_0

    .line 1300
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 1303
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    .line 1310
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1311
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1312
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    const-string v1, "KIW Transition"

    .line 1313
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 1322
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    return-void
.end method

.method private turnOffNightFilter(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 1391
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1392
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    :cond_0
    return-void
.end method

.method private turnOnNightFilter(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1347
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->hasFaces()Z

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getNightFilterColor(Z)[F

    move-result-object p0

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec4 position;\nattribute vec2 texCoords;\nvarying   vec2 outTexCoords;\nvoid main() {\n outTexCoords =  texCoords;\n gl_Position  =  position;\n}\n"

    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform vec3 toneColor;\nuniform float uNightFilter;\nuniform vec3 uFilterColor;\nvoid main(void){\nvec4 texColor =  texture2D(baseSampler, outTexCoords);\nvec4 filterColor = vec4(uFilterColor.x,uFilterColor.y,uFilterColor.z ,1.);\nvec4 textureColor=  vec4(texColor.r, texColor.g, texColor.b, 1.);\ngl_FragColor = textureColor * (1.0 - uNightFilter) + filterColor * uNightFilter;\n }\n\n"

    .line 1376
    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemImageFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v0

    const-string v1, "uNightFilter"

    const/4 v2, 0x3

    .line 1377
    aget v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniform1f(Ljava/lang/String;F)V

    const-string v1, "uFilterColor"

    const/4 v2, 0x0

    .line 1378
    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget p0, p0, v4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/graphics/SemCustomFilter;->setUniform3f(Ljava/lang/String;FFF)V

    const/4 p0, 0x0

    .line 1380
    invoke-virtual {p1, v4, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1381
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1383
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateNightFilter()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "display_night_theme_wallpaper"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1335
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateNightFilter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  ,  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardImageWallpaper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded()V

    .line 1338
    invoke-direct {p0, p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->turnOnNightFilter(Landroid/view/View;)V

    goto :goto_1

    .line 1340
    :cond_1
    invoke-direct {p0, p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->turnOffNightFilter(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private updateSmartCropRectIfNeeded()V
    .locals 3

    .line 344
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 347
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method private updateWallpaper()V
    .locals 1

    const/4 v0, 0x1

    .line 356
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper(Z)V

    return-void
.end method

.method private updateWallpaper(Z)V
    .locals 5

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWallpaper() START useCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , forceSmartCrop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 363
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    .line 365
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "updateWallpaper: cancel update wallpaper"

    .line 366
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 368
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->start()V

    .line 376
    :cond_1
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;Z)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 438
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 440
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz p1, :cond_4

    .line 441
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 439
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 773
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->cleanUp()V

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleCaches()V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 777
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 778
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_1

    .line 782
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    .line 790
    :cond_1
    invoke-direct {p0, p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->turnOffNightFilter(Landroid/view/View;)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 261
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 265
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->loadBitmap(ILandroid/os/UserHandle;Z)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    .line 266
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    if-eqz v1, :cond_1

    .line 267
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    .line 269
    :cond_1
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadBitmap(ILandroid/os/UserHandle;Z)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 6

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBitmap:"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "KeyguardImageWallpaper"

    if-eqz v1, :cond_1

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 471
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 475
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 478
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "load MDM wallpaper!"

    .line 479
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v1, v2

    :goto_0
    const-string v5, "Can\'t load MDM wallpaper!"

    .line 487
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v4, "file problem!"

    .line 489
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 493
    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_2
    move-object v1, v2

    .line 498
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isSubUser()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isFbeForSubUser()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Set FBE wallpaper."

    .line 500
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 503
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v4, "FBE wallpaper is not available!"

    .line 505
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v1, :cond_7

    const-string v4, "FBE wallpaper is null!"

    .line 509
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 513
    :cond_4
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 514
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 518
    :cond_5
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    const-string v4, "from DLS"

    .line 521
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v4, "DLS returns null for ImageWallpaper bitmap."

    .line 525
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 528
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 529
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_7

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    .line 530
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    if-eqz v4, :cond_7

    .line 531
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v4, "from DLS(FBE)"

    .line 532
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    const/4 v4, 0x0

    .line 539
    :try_start_2
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V

    const/4 v4, 0x1

    if-nez v1, :cond_b

    if-eqz p2, :cond_8

    .line 542
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 543
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBitmap: which = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {p2, p1, v1}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_9

    .line 547
    :try_start_3
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 548
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 549
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_5

    .line 551
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    .line 553
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {p2, v1}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;I)I

    move-result p2

    .line 554
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_5

    .line 556
    :cond_a
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    move-object v2, p1

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto/16 :goto_9

    :catch_2
    move-object v2, p1

    goto :goto_8

    .line 561
    :cond_b
    :goto_6
    :try_start_4
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    if-nez p1, :cond_c

    .line 562
    iget p1, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsWidth:I

    iget p2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mMetricsHeight:I

    invoke-static {v1, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 563
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz v1, :cond_c

    .line 565
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :cond_c
    move-object p1, v1

    :goto_7
    if-eqz p1, :cond_e

    const-string p2, "loadBitmap end"

    .line 572
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p2, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 574
    iget-object p0, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-interface {p0, p1, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_d
    const-string p0, ",success"

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_e
    :try_start_5
    const-string p0, ",fail"

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 589
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_3
    :goto_8
    :try_start_6
    const-string p0, ",fail(OOM)"

    .line 585
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 589
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 887
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz p0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->start()V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 912
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommand: ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardImageWallpaper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->onCommand(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 929
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastCommand:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: prev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 222
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 223
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 226
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 232
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    if-eq p1, v2, :cond_3

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNightModeOn:Z

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateNightFilter()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 896
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 901
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 905
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    .line 906
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 673
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 675
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    const-string v2, "KeyguardImageWallpaper"

    if-eqz v0, :cond_9

    .line 676
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 682
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 689
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTransitionAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 690
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0xff

    if-eqz v4, :cond_1

    .line 691
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUpdateStyle()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v3, v6

    .line 697
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 699
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOrientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    goto :goto_0

    :cond_2
    move v5, v1

    .line 702
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 703
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v8}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->prepareDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 704
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 706
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 707
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 708
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 711
    :goto_1
    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-eqz v4, :cond_4

    move v3, v6

    .line 715
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    if-ge v3, v6, :cond_5

    .line 716
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 717
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 718
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-wide/16 v2, 0x32

    .line 719
    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->postInvalidateDelayed(J)V

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 720
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->isCustom()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    invoke-static {v3, p0, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded()V

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDraw, mSmartCroppedResult + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 724
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 728
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    if-nez v2, :cond_7

    .line 729
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 730
    iput-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 732
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 734
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 735
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNeedToRedraw:Z

    return-void

    :cond_8
    :goto_3
    const-string p0, "mBitmapWidth == 0 || mBitmapHeight == 0"

    .line 683
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string p0, "cached wallpaper is null or is recycled"

    .line 678
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 634
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout:  \nchanged = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], \nleft = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \ntop = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \nright = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \nbottom = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardImageWallpaper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastRight : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLastBottom : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedToRedraw : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNeedToRedraw:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_7

    if-nez p5, :cond_1

    goto :goto_2

    .line 648
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "It is status bar size. Ignored."

    .line 649
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 653
    :cond_2
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, p4, :cond_4

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    if-eq p1, p5, :cond_3

    goto :goto_0

    :cond_3
    move p1, p2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v0

    :goto_1
    if-nez p1, :cond_5

    .line 654
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mNeedToRedraw:Z

    if-eqz p1, :cond_6

    :cond_5
    move p2, v0

    :cond_6
    if-eqz p2, :cond_7

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout called init() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    .line 659
    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    .line 660
    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    .line 665
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateNightFilter()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 242
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onResume()V

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->canRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_3

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestDraw()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 6

    .line 745
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->update()V

    .line 746
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 747
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    const-string v2, "KeyguardImageWallpaper"

    if-eq v1, v0, :cond_0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    :cond_0
    const/4 v0, 0x0

    .line 752
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUseCache:Z

    const/4 v1, 0x1

    .line 758
    sget-boolean v3, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_2

    .line 759
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v3

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , prev id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWallpaperId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , current id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWallpaperId:I

    if-eq v3, v4, :cond_1

    .line 762
    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentWallpaperId:I

    goto :goto_0

    :cond_1
    const-string v1, "SmartCrop should be ignored because this display wallpaper is not changed."

    .line 765
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 768
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper(Z)V

    return-void
.end method

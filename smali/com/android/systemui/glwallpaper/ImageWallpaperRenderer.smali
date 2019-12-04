.class public Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;
.implements Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;
.implements Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaperRenderer"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurDensityDpi:I

.field private mCurDisplayInfo:Landroid/view/DisplayInfo;

.field private mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

.field private mDisplayId:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

.field private final mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

.field private mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field private mIsInconsistencyWallpaper:Z

.field private mIsNightModeOn:Z

.field private mIsSupportLandWallpaper:Z

.field private mLastDeviceHeight:I

.field private mLastDeviceWidth:I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private mLastRotation:I

.field private mOnSemColorsChangedListener:Landroid/app/WallpaperManager$OnSemColorsChangedListener;

.field private final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field private mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

.field private final mScissor:Landroid/graphics/Rect;

.field private mScissorMode:Z

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mViewport:Landroid/graphics/Rect;

.field private final mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;I)V
    .locals 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 104
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    .line 105
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 111
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    const/4 v1, 0x0

    .line 114
    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 117
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedWidth:I

    .line 118
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedHeight:I

    .line 119
    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    .line 120
    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    .line 127
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 428
    new-instance v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;-><init>(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOnSemColorsChangedListener:Landroid/app/WallpaperManager$OnSemColorsChangedListener;

    .line 152
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperManager not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 159
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 160
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 165
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v1, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-direct {v2, v1, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    .line 170
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    .line 172
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p2, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    .line 173
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p2, v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    .line 174
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-direct {p2}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    .line 175
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    .line 178
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 183
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->start(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_2
    iput p3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 195
    new-instance p2, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    iget p3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 198
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsSupportLandWallpaper:Z

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget p2, p1, Landroid/view/DisplayInfo;->rotation:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    .line 203
    iget p2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 205
    iget p2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    .line 206
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    .line 211
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 212
    new-instance p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    .line 216
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOnSemColorsChangedListener:Landroid/app/WallpaperManager$OnSemColorsChangedListener;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager;->addOnSemColorsChangedListener(Landroid/app/WallpaperManager$OnSemColorsChangedListener;Landroid/os/Handler;)V

    .line 217
    invoke-direct {p0, p3}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setWhiteBgSettings(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)I
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setWhiteBgSettings(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private getCurrentWhich()I
    .locals 2

    .line 450
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 451
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x11

    move v1, p0

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    :cond_1
    :goto_0
    return v1
.end method

.method private initBitmap()V
    .locals 3

    .line 248
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "initBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "reload bitmap failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 257
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 261
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsSupportLandWallpaper:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method

.method private loadBitmap()Z
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->getDisplayId()I

    move-result v0

    .line 275
    sget-object v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBitmap, prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 277
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 278
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 279
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    .line 280
    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 281
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 286
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_3

    .line 287
    :cond_1
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    if-ne v0, v2, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v2, v3}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 294
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmapWidth:I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmapHeight:I

    .line 298
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmapWidth:I

    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmapHeight:I

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    return v1
.end method

.method private scaleViewport(F)V
    .locals 7

    .line 501
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 502
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 504
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8ccccd    # 1.1f

    .line 506
    invoke-static {v4, v5, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    sub-float/2addr v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 510
    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float v6, v0, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v5, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 512
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private setWhiteBgSettings(Landroid/app/SemWallpaperColors;)V
    .locals 11

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result v0

    .line 695
    sget-object v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhiteBgSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p1

    if-nez p1, :cond_0

    .line 699
    sget-object p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setWhiteBgSettings: primaryColor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 704
    :cond_0
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const/4 v1, 0x0

    .line 707
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 708
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    const/4 v5, 0x2

    .line 709
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    if-ne p1, v3, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v1

    .line 711
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "need_dark_statusbar"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v1

    .line 712
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "need_dark_font"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v1

    .line 713
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "need_dark_navigationbar"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v3, :cond_6

    move v1, v3

    .line 715
    :cond_6
    sget-object v3, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWhiteBgSettings, [oldValStatusBar="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", newValStatusBar="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "] [oldValBody="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", newValBody="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "] [oldValNaviBar="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", newValNaviBar="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_7

    .line 721
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set need_dark_statusbar :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eq v6, v4, :cond_8

    .line 727
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 729
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set need_dark_font :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_9

    if-eq v1, p1, :cond_9

    .line 734
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 736
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set need_dark_navigationbar :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    .line 743
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    .line 744
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDisplayInfo()V
    .locals 2

    .line 779
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    .line 782
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 668
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProxy="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 669
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceSize="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 670
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 671
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mViewport="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 672
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissorMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 673
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 674
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 675
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "threshold="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 677
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "NightMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getStatus()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 679
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOnSemColorsChangedListener:Landroid/app/WallpaperManager$OnSemColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnSemColorsChangedListener(Landroid/app/WallpaperManager$OnSemColorsChangedListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 10

    .line 609
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 625
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 626
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    if-eq v0, p1, :cond_3

    .line 627
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 628
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Dark Mode change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedWidth:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedHeight:I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 633
    :cond_1
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged change night mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2

    .line 630
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged change night mode. but need surface size update "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 643
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 644
    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsSupportLandWallpaper:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    if-eq p1, v9, :cond_6

    .line 645
    iput v9, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    .line 649
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onConfigurationChanged rotation change deviceHeight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " deviceWidth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rotation : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Change Rotation  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eq v9, v2, :cond_5

    const/4 p1, 0x3

    if-ne v9, p1, :cond_4

    goto :goto_3

    .line 657
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, v0, v1, v3, p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(IIFF)V

    goto :goto_4

    .line 654
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v7, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 655
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 654
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinatesForLandscape(IIFFLandroid/graphics/Rect;I)V

    :goto_4
    move v1, v2

    :cond_6
    return v1
.end method

.method public onDisplayChanged(ILandroid/view/SurfaceHolder;)Z
    .locals 9

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 558
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 560
    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsSupportLandWallpaper:Z

    const-string p2, " deviceWidth="

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    if-eq p1, v6, :cond_2

    .line 561
    iput v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    .line 563
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayChanged rotation change deviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Change Rotation  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eq v6, v8, :cond_1

    const/4 p1, 0x3

    if-ne v6, p1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(IIFF)V

    goto :goto_1

    .line 570
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 571
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 570
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinatesForLandscape(IIFFLandroid/graphics/Rect;I)V

    :goto_1
    move p1, v8

    goto :goto_2

    :cond_2
    move p1, v7

    .line 579
    :goto_2
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v0, v1, :cond_7

    :cond_3
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eq v0, v1, :cond_7

    .line 581
    :cond_4
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayChanged deviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget p2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mLastDeviceHeight="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mLastDeviceWidth="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Change Resolution  prev "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , new : w: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 589
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget p2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceWidth:I

    .line 590
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastDeviceHeight:I

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->initBitmap()V

    .line 594
    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedWidth:I

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ne p1, p2, :cond_6

    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedHeight:I

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_5

    goto :goto_3

    :cond_5
    move p1, v8

    goto :goto_4

    .line 595
    :cond_6
    :goto_3
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string p2, "Surface Size and bitmap size different.So update surface Size"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->updateSurfaceSize(II)V

    move p1, v7

    :cond_7
    :goto_4
    return p1
.end method

.method public onDrawFrame()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->getReveal()F

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uAod2Opacity"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 354
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uPer85"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v2, "uReveal"

    invoke-virtual {v0, v2}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v0, 0x4000

    .line 357
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->scaleViewport(F)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->isApplyToWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->setStatus(I)V

    goto :goto_1

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->setStatus(I)V

    .line 378
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getStatus()I

    move-result v0

    const-string/jumbo v3, "uNightFilter"

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->hasFaces()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getNightFilterColor(Z)[F

    move-result-object v0

    .line 380
    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 381
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v4, "uFilterColor"

    invoke-virtual {v3, v4}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v3

    aget v2, v0, v2

    aget v1, v0, v1

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v3, v2, v1, v0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_2

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 385
    :goto_2
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDrawFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,surfaceSize : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDarkFilter:Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->useTexture()V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->draw()V

    return-void
.end method

.method public onRevealEnd()V
    .locals 3

    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    .line 535
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    .line 539
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->postRender()V

    return-void
.end method

.method public onRevealStart(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 523
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    .line 525
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 527
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->preRender()V

    return-void
.end method

.method public onRevealStateChanged()V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 9

    .line 307
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id 2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v3}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onSurfaceChanged w: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,h: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,mSurfaceSize : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedWidth:I

    .line 310
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRequestedHeight:I

    .line 312
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 313
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dex surface : width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v2, p2, :cond_0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eq v0, p1, :cond_0

    .line 316
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v3, v2, v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->updateSurfaceSize(II)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 322
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustDexMode()V

    goto/16 :goto_1

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 329
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 330
    sget-object p2, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Prev rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rotation : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", orientation "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object p2, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLastRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    if-eq v8, p1, :cond_3

    const/4 p1, 0x3

    if-ne v8, p1, :cond_2

    goto :goto_0

    .line 338
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(IIFF)V

    goto :goto_1

    .line 335
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 335
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinatesForLandscape(IIFFLandroid/graphics/Rect;I)V

    goto :goto_1

    .line 342
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(IIFF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    .line 225
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, " onSurfaceCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 226
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    sget v1, Lcom/android/systemui/R$raw;->image_wallpaper_vertex_shader:I

    sget v2, Lcom/android/systemui/R$raw;->image_wallpaper_fragment_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->useGLProgram(II)Z

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "reload bitmap failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 235
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 238
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsSupportLandWallpaper:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTiltMotionSettingsChanged()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->preRender()V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    .line 687
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->postRender()V

    :cond_0
    return-void
.end method

.method public reportSurfaceSize()Landroid/util/Size;
    .locals 3

    .line 409
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reportSurfaceSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateDisplayInfo()V

    .line 411
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reportSurfaceSize h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Landroid/util/Size;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 415
    :cond_0
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reportSurfaceSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public setInconsistencyWallpaper(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsInconsistencyWallpaper:Z

    return-void
.end method

.method public updateOffsets(FF)V
    .locals 2

    .line 400
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    .line 401
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 402
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 403
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    .line 404
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

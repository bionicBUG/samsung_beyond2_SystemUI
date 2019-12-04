.class public Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field private mDlsViewMode:I

.field private mHasWindowFocus:Z

.field private mIsCleanUp:Z

.field private mIsSurfaceViewAdded:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastHeight:I

.field private mLastWidth:I

.field private final mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mRootView:Landroid/view/View;

.field private mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mThemePackage:Ljava/lang/String;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVideoColor:Ljava/lang/String;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p5, v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 62
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    .line 77
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    .line 105
    new-instance v1, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    .line 543
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 120
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 122
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 124
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    .line 128
    new-instance p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    invoke-direct {p1, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 129
    iput-object p5, p0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    .line 131
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getVideoResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 133
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 136
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p1, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isVideoWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "KeyguardVideoWallpaper"

    const-string p2, "Showing state"

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadBGBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method private drawVideo(Z)V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "KeyguardVideoWallpaper"

    if-eqz p1, :cond_1

    .line 516
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 517
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    const-string p0, "drawVideo() skip by DLS"

    .line 518
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 523
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawVideo() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 525
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    :goto_0
    return-void
.end method

.method private initSurfaceView()V
    .locals 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSurfaceView: cleanUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsCleanUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSurfaceView == null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsCleanUp:Z

    if-eqz v0, :cond_1

    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 168
    new-instance v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/SurfaceInfo;-><init>(Landroid/view/SurfaceHolder;II)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private isDefaultVideoWallpaper()Z
    .locals 3

    .line 433
    sget-object v0, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    const-string v1, "VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 436
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isVideoWallpaperEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private isPlayVideoReason(I)Z
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p0, :cond_2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private loadBGBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getVideoThumbnailForPreFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 201
    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 202
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 207
    :cond_0
    :goto_0
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    const-string v1, "KeyguardVideoWallpaper"

    const-string v2, "Can\'t decode file"

    .line 205
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    .line 207
    :goto_3
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private loadMediaPlayer()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "releaseVideoPlayer()"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    return-void
.end method

.method private seekTo(I)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz p0, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private seekToMiddleFrameIfNeeded()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_PLAY_RANDOM_POSITON:Z

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 411
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private seekToRandomFrameIfNeeded()V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_PLAY_RANDOM_POSITON:Z

    if-eqz v0, :cond_2

    .line 421
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getDuration()I

    move-result v1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardVideoWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 428
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekTo(I)V

    :cond_2
    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V
    .locals 1

    const/4 v0, -0x1

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V

    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V
    .locals 7

    .line 447
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState() c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSurfaceViewAdded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardVideoWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    .line 456
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    .line 457
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-eq p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-nez v1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->initSurfaceView()V

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v1, v5, :cond_1

    if-ne p1, v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 468
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v5, p1, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 473
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScreenState, prevState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v3, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_2

    .line 504
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    goto :goto_2

    .line 492
    :cond_4
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v1, p1, :cond_6

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_PLAY_RANDOM_POSITON:Z

    if-eqz p1, :cond_5

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekToRandomFrameIfNeeded()V

    goto :goto_1

    .line 496
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekTo(I)V

    .line 498
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_2

    .line 499
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->cancelReleaseResource()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-eqz p1, :cond_a

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    goto :goto_2

    .line 478
    :cond_7
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v1, p1, :cond_8

    .line 479
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->cancelReleaseResource()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-eqz p1, :cond_8

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    :cond_8
    if-eqz v0, :cond_9

    .line 484
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->isPlayVideoReason(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 485
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_2

    .line 487
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekToMiddleFrameIfNeeded()V

    .line 488
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "cleanUp: "

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 338
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 343
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 347
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 350
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 351
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 353
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 570
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    .line 571
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    .line 576
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadBGBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$new$0$KeyguardVideoWallpaper(FFFFII)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScaleSurface() [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ] sx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", px = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", py = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 109
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p3}, Landroid/view/SurfaceView;->setPivotX(F)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p4}, Landroid/view/SurfaceView;->setPivotY(F)V

    .line 111
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p5, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommand() action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WAKE_LOCK"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    if-eqz p2, :cond_0

    const-string v0, "SCREEN_ON_REASON"

    .line 362
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 364
    :cond_0
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;I)V

    goto :goto_0

    :cond_1
    const-string p2, "ACTION_UNLOCK"

    .line 365
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 366
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0

    :cond_2
    const-string p2, "SLEEP_LOCK"

    .line 367
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 368
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDlsViewModeChanged(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekToMiddleFrameIfNeeded()V

    .line 261
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_1

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 264
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 265
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 273
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 276
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDisplayInfo(Landroid/content/Context;)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 277
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    if-eq p1, v1, :cond_2

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout called : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", deviceHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardVideoWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_1

    const/4 p1, 0x0

    .line 281
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    .line 282
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    goto :goto_0

    .line 284
    :cond_1
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    .line 285
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    :cond_0
    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 388
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-eq v0, v1, :cond_0

    return-void

    .line 391
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHasWindowFocus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", current state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardVideoWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz p1, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->seekToMiddleFrameIfNeeded()V

    const/4 p1, 0x0

    .line 400
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setKeyguardOccluded(Z)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "surfaceChanged: width = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardVideoWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceCreated: w = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardVideoWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iput v0, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    .line 85
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    iput v0, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "KeyguardVideoWallpaper"

    const-string v0, "surfaceDestroyed: "

    .line 97
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    return-void
.end method

.method public update()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 312
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update new video wallpaper! path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardVideoWallpaper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    .line 316
    invoke-static {v1, v2, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getVideoResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v1, v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 325
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_3
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 2

    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 375
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    return-void
.end method

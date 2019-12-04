.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$GLEngine;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaper"


# instance fields
.field private mEngineList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/ImageWallpaper$GLEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mGLEngine:Lcom/android/systemui/ImageWallpaper$GLEngine;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getDisplayId()I

    move-result v0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 79
    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;-><init>(Lcom/android/systemui/ImageWallpaper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mGLEngine:Lcom/android/systemui/ImageWallpaper$GLEngine;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mGLEngine:Lcom/android/systemui/ImageWallpaper$GLEngine;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    return-void
.end method

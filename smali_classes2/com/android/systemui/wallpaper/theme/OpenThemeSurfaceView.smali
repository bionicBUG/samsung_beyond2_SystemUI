.class public abstract Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "OpenThemeSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mIsScreenOn:Z

.field private mMinInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    const-string p1, "OpenThemeSurfaceView"

    .line 32
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 38
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private startDraw()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    if-lez v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iput v0, v1, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v0, "startThread"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    .line 105
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    :cond_3
    :goto_0
    return-void
.end method

.method private stopDraw()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 115
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v0, "stopThread"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->stopDraw()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 43
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    if-ne v1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    :cond_0
    return-void
.end method

.method public setMinInterval(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->startDraw()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 85
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v0, "suspendThread"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    :cond_0
    return-void
.end method

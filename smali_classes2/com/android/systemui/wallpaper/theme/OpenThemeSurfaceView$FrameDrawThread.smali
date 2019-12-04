.class Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "OpenThemeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 124
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/16 p1, 0x22

    .line 125
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 128
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 203
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 139
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 143
    monitor-enter p0

    :goto_1
    const/4 v5, 0x0

    .line 145
    :try_start_0
    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v6, :cond_1

    .line 146
    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 150
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 152
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v2, :cond_4

    .line 156
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    :goto_2
    invoke-interface {v6, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v0

    :catch_0
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    goto :goto_2

    .line 158
    :cond_4
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 160
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 161
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v6, 0x3c

    if-ne v2, v6, :cond_5

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide v8, 0x42374876e8000000L    # 1.0E11

    sub-long v0, v6, v0

    long-to-double v0, v0

    div-double/2addr v8, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v0

    .line 164
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v8

    .line 165
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->access$000(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fps: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    move-wide v0, v6

    .line 171
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    .line 178
    :try_start_2
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-gez v2, :cond_0

    .line 181
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v7, v2

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x96

    cmp-long v2, v7, v9

    if-lez v2, :cond_6

    const-wide/16 v2, 0x64

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 184
    :cond_6
    iget v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v7, v2

    add-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 158
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    return-void
.end method

.method public suspendThread()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    return-void
.end method

.class public Lcom/samsung/android/veconverter/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string p1, "VEConverter"

    const-string v0, "new frame available"

    .line 352
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p1, p0, Lcom/samsung/android/veconverter/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/veconverter/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/surfaces/OutputSurface;->mFrameAvailable:Z

    .line 358
    iget-object p0, p0, Lcom/samsung/android/veconverter/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit p1

    return-void

    .line 355
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 359
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

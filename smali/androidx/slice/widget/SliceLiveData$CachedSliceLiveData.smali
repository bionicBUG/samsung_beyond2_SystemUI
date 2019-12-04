.class public Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
.super Landroidx/lifecycle/LiveData;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedSliceLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field final mContext:Landroid/content/Context;

.field private mInitialSliceLoaded:Z

.field private mInput:Ljava/io/InputStream;

.field private final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field private mLive:Z

.field mPendingContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field mPendingUri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private mSliceCallbackRegistered:Z

.field final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field mStructure:Landroidx/slice/SliceStructure;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field mUri:Landroid/net/Uri;


# direct methods
.method static synthetic access$000(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mLive:Z

    if-eqz p1, :cond_0

    .line 227
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingUri:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingContext:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingIntent:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mActive:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    if-nez p1, :cond_1

    .line 232
    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 233
    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    iget-object p3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {p1, p2, p3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 234
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected declared-synchronized loadInitialSlice()V
    .locals 4

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mInitialSliceLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mInput:Ljava/io/InputStream;

    const-string v2, "UTF-8"

    new-instance v3, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$1;

    invoke-direct {v3, p0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$1;-><init>(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/SliceUtils;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v0

    .line 210
    new-instance v1, Landroidx/slice/SliceStructure;

    invoke-direct {v1, v0}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    iput-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mStructure:Landroidx/slice/SliceStructure;

    .line 211
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    .line 212
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 213
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    :try_start_2
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mInput:Ljava/io/InputStream;

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mInitialSliceLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActive()V
    .locals 4

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mActive:Z

    .line 241
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mInitialSliceLoaded:Z

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$2;

    invoke-direct {v1, p0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$2;-><init>(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mLive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    if-nez v1, :cond_1

    .line 250
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 251
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 252
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onInactive()V
    .locals 4

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mActive:Z

    .line 259
    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 261
    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method onSliceError(ILjava/lang/Throwable;)V
    .locals 2

    .line 266
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    invoke-interface {v0, p1, p2}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    .line 267
    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mLive:Z

    if-eqz p1, :cond_1

    .line 268
    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 270
    iput-boolean p2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallbackRegistered:Z

    .line 272
    :cond_0
    iput-boolean p2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mLive:Z

    :cond_1
    return-void
.end method

.method protected updateSlice()V
    .locals 2

    .line 282
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 283
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-interface {v1, v0}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 285
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

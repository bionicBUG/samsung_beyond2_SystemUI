.class public final Lio/reactivex/internal/operators/completable/CompletableTimeout;
.super Lio/reactivex/Completable;
.source "CompletableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;,
        Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;
    }
.end annotation


# instance fields
.field final other:Lio/reactivex/CompletableSource;

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/CompletableSource;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 7

    .line 44
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 45
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 49
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->scheduler:Lio/reactivex/Scheduler;

    new-instance v3, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;-><init>(Lio/reactivex/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->timeout:J

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 53
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->source:Lio/reactivex/CompletableSource;

    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;

    invoke-direct {v2, v0, v1, p1}, Lio/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver;-><init>(Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/CompletableObserver;)V

    invoke-interface {p0, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
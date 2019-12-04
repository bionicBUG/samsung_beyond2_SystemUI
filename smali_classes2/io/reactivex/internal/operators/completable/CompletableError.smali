.class public final Lio/reactivex/internal/operators/completable/CompletableError;
.super Lio/reactivex/Completable;
.source "CompletableError.java"


# instance fields
.field final error:Ljava/lang/Throwable;


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableError;->error:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void
.end method

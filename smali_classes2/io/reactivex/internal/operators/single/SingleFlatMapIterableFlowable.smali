.class public final Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable;
.super Lio/reactivex/Flowable;
.source "SingleFlatMapIterableFlowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable$FlatMapIterableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable$FlatMapIterableObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/single/SingleFlatMapIterableFlowable$FlatMapIterableObserver;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
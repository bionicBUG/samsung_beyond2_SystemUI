.class public final Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSelectorSupport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final firstTimeoutIndicator:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->other:Lorg/reactivestreams/Publisher;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    .line 51
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber;->startFirstTimeout(Lorg/reactivestreams/Publisher;)V

    .line 53
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2, v0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lorg/reactivestreams/Publisher;)V

    .line 56
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 57
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->startFirstTimeout(Lorg/reactivestreams/Publisher;)V

    .line 58
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    invoke-virtual {p0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method

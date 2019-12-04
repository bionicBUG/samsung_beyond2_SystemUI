.class public final Lio/reactivex/internal/operators/single/SingleInternalHelper;
.super Ljava/lang/Object;
.source "SingleInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterator;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable;,
        Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No instances!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

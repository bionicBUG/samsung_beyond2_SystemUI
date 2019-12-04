.class public final Ldagger/internal/ReferenceReleasingProvider;
.super Ljava/lang/Object;
.source "ReferenceReleasingProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation build Ldagger/internal/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private final provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile strongReference:Ljava/lang/Object;

.field private volatile weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    return-void
.end method

.method private currentValue()Ljava/lang/Object;
    .locals 1

    .line 141
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 146
    iget-object p0, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ldagger/internal/ReferenceReleasingProvider;->currentValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Ldagger/internal/ReferenceReleasingProvider;->currentValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    .line 133
    :cond_0
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 135
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_2
    :goto_0
    sget-object p0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    if-ne v0, p0, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

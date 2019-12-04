.class final Lkotlin/coroutines/experimental/migration/ContinuationMigration;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutinesMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesMigration.kt\nkotlin/coroutines/experimental/migration/ContinuationMigration\n*L\n1#1,145:1\n*E\n"
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final continuation:Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    .line 81
    iget-object p1, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/experimental/Continuation;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 81
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getContinuation()Lkotlin/coroutines/experimental/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 84
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/Continuation;->resume(Ljava/lang/Object;)V

    .line 85
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->continuation:Lkotlin/coroutines/experimental/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/Continuation;->resumeWithException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

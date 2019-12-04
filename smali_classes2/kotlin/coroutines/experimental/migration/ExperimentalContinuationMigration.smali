.class final Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutinesMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesMigration.kt\nkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration\n*L\n1#1,145:1\n*E\n"
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/experimental/CoroutineContext;

.field private final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->continuation:Lkotlin/coroutines/Continuation;

    .line 75
    iget-object p1, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toExperimentalCoroutineContext(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 0

    .line 75
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p0
.end method

.method public final getContinuation()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->continuation:Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

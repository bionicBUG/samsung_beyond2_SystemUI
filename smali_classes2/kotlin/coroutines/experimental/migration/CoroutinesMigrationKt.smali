.class public final Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;
.super Ljava/lang/Object;
.source "CoroutinesMigration.kt"


# direct methods
.method public static final toContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;->getContinuation()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ContinuationMigration;-><init>(Lkotlin/coroutines/experimental/Continuation;)V

    :goto_1
    return-object v0
.end method

.method public static final toContinuationInterceptor(Lkotlin/coroutines/experimental/ContinuationInterceptor;)Lkotlin/coroutines/ContinuationInterceptor;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;->getInterceptor()Lkotlin/coroutines/ContinuationInterceptor;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;-><init>(Lkotlin/coroutines/experimental/ContinuationInterceptor;)V

    :goto_1
    return-object v0
.end method

.method public static final toCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    .line 50
    sget-object v1, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;

    .line 51
    sget-object v2, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    sget-object v2, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 53
    :goto_0
    sget-object v2, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lkotlin/coroutines/experimental/migration/ContextMigration;

    invoke-direct {v2, p0}, Lkotlin/coroutines/experimental/migration/ContextMigration;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;)V

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toContinuationInterceptor(Lkotlin/coroutines/experimental/ContinuationInterceptor;)Lkotlin/coroutines/ContinuationInterceptor;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static final toExperimentalContinuation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ContinuationMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ContinuationMigration;->getContinuation()Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_1
    return-object v0
.end method

.method public static final toExperimentalContinuationInterceptor(Lkotlin/coroutines/ContinuationInterceptor;)Lkotlin/coroutines/experimental/ContinuationInterceptor;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v0, p0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/coroutines/experimental/migration/ContinuationInterceptorMigration;->getInterceptor()Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;

    invoke-direct {v0, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalContinuationInterceptorMigration;-><init>(Lkotlin/coroutines/ContinuationInterceptor;)V

    :goto_1
    return-object v0
.end method

.method public static final toExperimentalCoroutineContext(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/ContinuationInterceptor;

    .line 37
    sget-object v1, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/experimental/migration/ContextMigration;

    .line 38
    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object v2, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lkotlin/coroutines/experimental/migration/ContextMigration;->getContext()Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    .line 40
    :goto_0
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;

    invoke-direct {v2, p0}, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    invoke-interface {v1, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    invoke-static {v0}, Lkotlin/coroutines/experimental/migration/CoroutinesMigrationKt;->toExperimentalContinuationInterceptor(Lkotlin/coroutines/ContinuationInterceptor;)Lkotlin/coroutines/experimental/ContinuationInterceptor;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    :goto_2
    return-object v1
.end method

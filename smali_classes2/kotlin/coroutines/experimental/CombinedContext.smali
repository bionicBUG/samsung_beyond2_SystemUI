.class public final Lkotlin/coroutines/experimental/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/experimental/CombinedContext\n*L\n1#1,89:1\n*E\n"
.end annotation


# instance fields
.field private final element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

.field private final left:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    return-void
.end method

.method private final contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z
    .locals 1

    .line 64
    invoke-interface {p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/experimental/CombinedContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z
    .locals 1

    .line 69
    :goto_0
    iget-object v0, p1, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_0
    iget-object p1, p1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 71
    instance-of v0, p1, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 74
    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {p0, p1}, Lkotlin/coroutines/experimental/CombinedContext;->contains(Lkotlin/coroutines/experimental/CoroutineContext$Element;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final size()I
    .locals 1

    .line 61
    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v0, p0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {p0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 80
    instance-of v0, p1, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {p1}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v0

    invoke-direct {p0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/coroutines/experimental/CombinedContext;->containsAll(Lkotlin/coroutines/experimental/CombinedContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :goto_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 39
    instance-of v0, p0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_1

    .line 40
    check-cast p0, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p0

    .line 52
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lkotlin/coroutines/experimental/CombinedContext;

    iget-object p0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v0, p1, p0}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/coroutines/experimental/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/experimental/CombinedContext$toString$1;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lkotlin/coroutines/experimental/CombinedContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

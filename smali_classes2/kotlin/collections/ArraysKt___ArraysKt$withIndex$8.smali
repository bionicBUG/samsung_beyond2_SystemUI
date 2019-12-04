.class final Lkotlin/collections/ArraysKt___ArraysKt$withIndex$8;
.super Lkotlin/jvm/internal/Lambda;
.source "_Arrays.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/collections/BooleanIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:[Z


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$8;->invoke()Lkotlin/collections/BooleanIterator;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/collections/BooleanIterator;
    .locals 0

    .line 9194
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$8;->$this_withIndex:[Z

    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([Z)Lkotlin/collections/BooleanIterator;

    move-result-object p0

    return-object p0
.end method

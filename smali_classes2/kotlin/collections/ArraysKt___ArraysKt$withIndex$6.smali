.class final Lkotlin/collections/ArraysKt___ArraysKt$withIndex$6;
.super Lkotlin/jvm/internal/Lambda;
.source "_Arrays.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/collections/FloatIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:[F


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$6;->invoke()Lkotlin/collections/FloatIterator;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/collections/FloatIterator;
    .locals 0

    .line 9180
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$6;->$this_withIndex:[F

    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([F)Lkotlin/collections/FloatIterator;

    move-result-object p0

    return-object p0
.end method

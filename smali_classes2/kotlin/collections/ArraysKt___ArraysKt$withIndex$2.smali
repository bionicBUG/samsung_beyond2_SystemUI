.class final Lkotlin/collections/ArraysKt___ArraysKt$withIndex$2;
.super Lkotlin/jvm/internal/Lambda;
.source "_Arrays.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/collections/ByteIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:[B


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$2;->invoke()Lkotlin/collections/ByteIterator;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlin/collections/ByteIterator;
    .locals 0

    .line 9152
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$withIndex$2;->$this_withIndex:[B

    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorsKt;->iterator([B)Lkotlin/collections/ByteIterator;

    move-result-object p0

    return-object p0
.end method

.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n*L\n1#1,1944:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_asList:[D


# virtual methods
.method public contains(D)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([DD)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    .line 114
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->contains(D)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 0

    .line 118
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    aget-wide p0, p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->get(I)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 115
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    array-length p0, p0

    return p0
.end method

.method public indexOf(D)I
    .locals 0

    .line 119
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([DD)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 114
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->indexOf(D)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 116
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastIndexOf(D)I
    .locals 0

    .line 120
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([DD)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 114
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->lastIndexOf(D)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

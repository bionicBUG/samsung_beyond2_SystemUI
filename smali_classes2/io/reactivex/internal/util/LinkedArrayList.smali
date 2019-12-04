.class public Lio/reactivex/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field volatile size:I


# virtual methods
.method public head()[Ljava/lang/Object;
    .locals 0

    .line 80
    iget-object p0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 93
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    .line 94
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    move-object v4, p0

    move p0, v3

    move v5, p0

    :cond_0
    :goto_0
    if-ge p0, v1, :cond_1

    .line 101
    aget-object v6, v4, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_0

    .line 105
    aget-object v4, v4, v0

    check-cast v4, [Ljava/lang/Object;

    move v5, v3

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/slice/core/SliceQuery$1;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/slice/core/SliceQuery$Filter<",
        "Landroidx/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$item:Landroidx/slice/SliceItem;


# virtual methods
.method public filter(Landroidx/slice/SliceItem;)Z
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/slice/core/SliceQuery$1;->val$item:Landroidx/slice/SliceItem;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 0

    .line 97
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceQuery$1;->filter(Landroidx/slice/SliceItem;)Z

    move-result p0

    return p0
.end method

.class final Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $selectors:[Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$1;->$selectors:[Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->access$compareValuesByImpl(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

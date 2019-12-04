.class final Lkotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_SequencesJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $klass:Ljava/lang/Class;


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;->invoke(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    iget-object p0, p0, Lkotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;->$klass:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

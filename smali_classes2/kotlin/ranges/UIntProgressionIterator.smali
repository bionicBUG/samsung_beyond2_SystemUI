.class final Lkotlin/ranges/UIntProgressionIterator;
.super Lkotlin/collections/UIntIterator;
.source "UIntRange.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIntRange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntRange.kt\nkotlin/ranges/UIntProgressionIterator\n*L\n1#1,127:1\n*E\n"
.end annotation

.annotation build Lkotlin/ExperimentalUnsignedTypes;
.end annotation


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method private constructor <init>(III)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lkotlin/collections/UIntIterator;-><init>()V

    .line 108
    iput p2, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result p2

    if-lez p3, :cond_0

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    .line 110
    invoke-static {p3}, Lkotlin/UInt;->constructor-impl(I)I

    iput p3, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    .line 111
    iget-boolean p2, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    :goto_1
    iput p1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/UIntProgressionIterator;-><init>(III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    return p0
.end method

.method public nextUInt()I
    .locals 2

    .line 116
    iget v0, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    .line 117
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->finalElement:I

    if-ne v0, v1, :cond_1

    .line 118
    iget-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lkotlin/ranges/UIntProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 118
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 121
    :cond_1
    iget v1, p0, Lkotlin/ranges/UIntProgressionIterator;->step:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    iput v1, p0, Lkotlin/ranges/UIntProgressionIterator;->next:I

    :goto_0
    return v0
.end method

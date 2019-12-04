.class final Lkotlin/ranges/ULongProgressionIterator;
.super Lkotlin/collections/ULongIterator;
.source "ULongRange.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nULongRange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ULongRange.kt\nkotlin/ranges/ULongProgressionIterator\n*L\n1#1,127:1\n*E\n"
.end annotation

.annotation build Lkotlin/ExperimentalUnsignedTypes;
.end annotation


# instance fields
.field private final finalElement:J

.field private hasNext:Z

.field private next:J

.field private final step:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 3

    .line 107
    invoke-direct {p0}, Lkotlin/collections/ULongIterator;-><init>()V

    .line 108
    iput-wide p3, p0, Lkotlin/ranges/ULongProgressionIterator;->finalElement:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-static {p1, p2, p3, p4}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result p3

    if-lez v0, :cond_0

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    .line 110
    invoke-static {p5, p6}, Lkotlin/ULong;->constructor-impl(J)J

    iput-wide p5, p0, Lkotlin/ranges/ULongProgressionIterator;->step:J

    .line 111
    iget-boolean p3, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p1, p0, Lkotlin/ranges/ULongProgressionIterator;->finalElement:J

    :goto_1
    iput-wide p1, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 107
    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/ULongProgressionIterator;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    return p0
.end method

.method public nextULong()J
    .locals 4

    .line 116
    iget-wide v0, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    .line 117
    iget-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->finalElement:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 118
    iget-boolean v2, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 119
    iput-boolean v2, p0, Lkotlin/ranges/ULongProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 118
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 121
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->step:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    iput-wide v2, p0, Lkotlin/ranges/ULongProgressionIterator;->next:J

    :goto_0
    return-wide v0
.end method

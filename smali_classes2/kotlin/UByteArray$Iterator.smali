.class final Lkotlin/UByteArray$Iterator;
.super Lkotlin/collections/UByteIterator;
.source "UByteArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/UByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray$Iterator\n*L\n1#1,58:1\n*E\n"
.end annotation


# instance fields
.field private final array:[B

.field private index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lkotlin/collections/UByteIterator;-><init>()V

    iput-object p1, p0, Lkotlin/UByteArray$Iterator;->array:[B

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 36
    iget v0, p0, Lkotlin/UByteArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/UByteArray$Iterator;->array:[B

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextUByte()B
    .locals 3

    .line 37
    iget v0, p0, Lkotlin/UByteArray$Iterator;->index:I

    iget-object v1, p0, Lkotlin/UByteArray$Iterator;->array:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UByteArray$Iterator;->index:I

    aget-byte p0, v1, v0

    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

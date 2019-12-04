.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashingSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashingSource.kt\nokio/HashingSource\n*L\n1#1,139:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokio/HashingSource$Companion;


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/HashingSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/HashingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/HashingSource;->Companion:Lokio/HashingSource$Companion;

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_6

    .line 66
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 69
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 70
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    :goto_0
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 72
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v4, :cond_0

    .line 73
    iget v6, v4, Lokio/Segment;->limit:I

    iget v7, v4, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v2, v6

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_6

    .line 78
    iget v6, v4, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 79
    iget-object v1, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_2

    .line 80
    iget-object v6, v4, Lokio/Segment;->data:[B

    iget v7, v4, Lokio/Segment;->limit:I

    sub-int/2addr v7, v0

    invoke-virtual {v1, v6, v0, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 82
    :cond_2
    iget-object v1, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    if-eqz v1, :cond_4

    iget-object v6, v4, Lokio/Segment;->data:[B

    iget v7, v4, Lokio/Segment;->limit:I

    sub-int/2addr v7, v0

    invoke-virtual {v1, v6, v0, v7}, Ljavax/crypto/Mac;->update([BII)V

    .line 84
    :goto_2
    iget v0, v4, Lokio/Segment;->limit:I

    iget v1, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 86
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_3

    move-wide v2, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 82
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 70
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    :cond_6
    return-wide p2
.end method

.class public final Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,1451:1\n101#1,20:1476\n101#1,20:1508\n101#1:1528\n103#1,8:1530\n113#1,8:1539\n101#1,20:1548\n66#2:1452\n66#2:1453\n66#2:1454\n66#2:1455\n66#2:1456\n66#2:1457\n66#2:1458\n66#2:1459\n66#2:1460\n66#2:1461\n66#2:1462\n66#2:1463\n66#2:1464\n66#2:1465\n72#2:1466\n72#2:1467\n69#2:1468\n69#2:1469\n69#2:1470\n69#2:1471\n69#2:1472\n69#2:1473\n69#2:1474\n69#2:1475\n75#2:1496\n78#2:1497\n66#2:1498\n66#2:1499\n66#2:1500\n66#2:1501\n66#2:1502\n66#2:1503\n66#2:1504\n66#2:1505\n66#2:1506\n66#2:1507\n78#2:1529\n78#2:1538\n78#2:1547\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n*L\n396#1,20:1476\n1218#1,20:1508\n1249#1:1528\n1249#1,8:1530\n1249#1,8:1539\n1283#1,20:1548\n167#1:1452\n191#1:1453\n310#1:1454\n310#1:1455\n315#1:1456\n315#1:1457\n337#1:1458\n338#1:1459\n339#1:1460\n340#1:1461\n344#1:1462\n345#1:1463\n346#1:1464\n347#1:1465\n369#1:1466\n370#1:1467\n374#1:1468\n375#1:1469\n376#1:1470\n377#1:1471\n378#1:1472\n379#1:1473\n380#1:1474\n381#1:1475\n408#1:1496\n819#1:1497\n833#1:1498\n835#1:1499\n839#1:1500\n841#1:1501\n845#1:1502\n847#1:1503\n851#1:1504\n853#1:1505\n873#1:1506\n876#1:1507\n1249#1:1529\n1249#1:1538\n1249#1:1547\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 38
    invoke-static {v0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lokio/Segment;->limit:I

    .line 54
    iget-object v1, p0, Lokio/Segment;->data:[B

    :goto_0
    if-ge p3, p4, :cond_3

    if-ne p1, v0, :cond_1

    .line 59
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-eqz p0, :cond_0

    .line 60
    iget-object p1, p0, Lokio/Segment;->data:[B

    .line 61
    iget v0, p0, Lokio/Segment;->pos:I

    .line 62
    iget v1, p0, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    .line 65
    :cond_1
    :goto_1
    aget-byte v2, v1, p1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "$this$selectPrefix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_12

    .line 140
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 141
    iget v5, v0, Lokio/Segment;->pos:I

    .line 142
    iget v6, v0, Lokio/Segment;->limit:I

    .line 144
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$okio()[I

    move-result-object v2

    const/4 v7, 0x0

    move v9, v3

    move v8, v5

    move v10, v6

    move-object v5, v0

    move-object v6, v4

    move v4, v7

    :goto_0
    add-int/lit8 v11, v4, 0x1

    .line 151
    aget v4, v2, v4

    add-int/lit8 v12, v11, 0x1

    .line 153
    aget v11, v2, v11

    if-eq v11, v3, :cond_0

    move v9, v11

    :cond_0
    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v4, :cond_b

    mul-int/lit8 v4, v4, -0x1

    add-int v13, v12, v4

    :goto_1
    add-int/lit8 v4, v8, 0x1

    .line 167
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v14, v12, 0x1

    .line 168
    aget v12, v2, v12

    if-eq v8, v12, :cond_2

    return v9

    :cond_2
    if-ne v14, v13, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    if-ne v4, v10, :cond_9

    if-eqz v5, :cond_8

    .line 173
    iget-object v4, v5, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_7

    .line 174
    iget v5, v4, Lokio/Segment;->pos:I

    .line 175
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 176
    iget v10, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_6

    if-nez v8, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v1

    :cond_4
    return v9

    :cond_5
    move v4, v5

    move-object v5, v11

    goto :goto_4

    :cond_6
    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v16

    goto :goto_4

    .line 173
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_9
    :goto_4
    if-eqz v8, :cond_a

    .line 184
    aget v8, v2, v14

    move v13, v4

    goto :goto_6

    :cond_a
    move v8, v4

    move v12, v14

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v8, 0x1

    .line 191
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int v14, v12, v4

    :goto_5
    if-ne v12, v14, :cond_c

    return v9

    .line 196
    :cond_c
    aget v15, v2, v12

    if-ne v8, v15, :cond_11

    add-int/2addr v12, v4

    .line 197
    aget v8, v2, v12

    if-ne v13, v10, :cond_f

    .line 206
    iget-object v4, v5, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_e

    .line 207
    iget v5, v4, Lokio/Segment;->pos:I

    .line 208
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 209
    iget v10, v4, Lokio/Segment;->limit:I

    move v13, v5

    if-ne v4, v0, :cond_d

    move-object v5, v11

    goto :goto_6

    :cond_d
    move-object v5, v4

    goto :goto_6

    .line 206
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_f
    :goto_6
    if-ltz v8, :cond_10

    return v8

    :cond_10
    neg-int v4, v8

    move v8, v13

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    goto :goto_7

    :cond_13
    move v1, v3

    :goto_7
    return v1
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 136
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method

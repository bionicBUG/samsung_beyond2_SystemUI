.class public final Lokio/internal/ByteStringKt;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n+ 2 -Util.kt\nokio/-Util\n+ 3 Utf8.kt\nokio/Utf8\n*L\n1#1,341:1\n126#1,10:346\n60#2:342\n66#2:343\n66#2:344\n66#2:345\n60#2:371\n66#2:383\n60#2:403\n66#2:411\n66#2:423\n66#2:431\n60#2:455\n66#2:463\n66#2:467\n66#2:479\n66#2:487\n66#2:495\n209#3,7:356\n122#3:363\n216#3,5:364\n122#3:369\n223#3:370\n225#3:372\n393#3,2:373\n122#3:375\n396#3,6:376\n127#3:382\n402#3:384\n122#3:385\n403#3,11:386\n122#3:397\n416#3:398\n122#3:399\n418#3,2:400\n227#3:402\n229#3:404\n434#3,3:405\n122#3:408\n437#3:409\n127#3:410\n440#3,10:412\n127#3:422\n450#3:424\n122#3:425\n451#3,4:426\n127#3:430\n455#3:432\n122#3:433\n456#3,12:434\n122#3:446\n469#3,2:447\n122#3:449\n473#3:450\n122#3:451\n475#3,2:452\n231#3:454\n233#3:456\n492#3,3:457\n122#3:460\n495#3:461\n127#3:462\n498#3,2:464\n127#3:466\n502#3,10:468\n127#3:478\n512#3:480\n122#3:481\n513#3,4:482\n127#3:486\n517#3:488\n122#3:489\n518#3,4:490\n127#3:494\n522#3:496\n122#3:497\n523#3,13:498\n122#3:511\n537#3,2:512\n122#3:514\n540#3,2:515\n122#3:517\n544#3:518\n122#3:519\n546#3,2:520\n238#3:522\n122#3:523\n239#3,5:524\n*E\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n*L\n308#1,10:346\n62#1:342\n63#1:343\n238#1:344\n239#1:345\n327#1:371\n327#1:383\n327#1:403\n327#1:411\n327#1:423\n327#1:431\n327#1:455\n327#1:463\n327#1:467\n327#1:479\n327#1:487\n327#1:495\n327#1,7:356\n327#1:363\n327#1,5:364\n327#1:369\n327#1:370\n327#1:372\n327#1,2:373\n327#1:375\n327#1,6:376\n327#1:382\n327#1:384\n327#1:385\n327#1,11:386\n327#1:397\n327#1:398\n327#1:399\n327#1,2:400\n327#1:402\n327#1:404\n327#1,3:405\n327#1:408\n327#1:409\n327#1:410\n327#1,10:412\n327#1:422\n327#1:424\n327#1:425\n327#1,4:426\n327#1:430\n327#1:432\n327#1:433\n327#1,12:434\n327#1:446\n327#1,2:447\n327#1:449\n327#1:450\n327#1:451\n327#1,2:452\n327#1:454\n327#1:456\n327#1,3:457\n327#1:460\n327#1:461\n327#1:462\n327#1,2:464\n327#1:466\n327#1,10:468\n327#1:478\n327#1:480\n327#1:481\n327#1,4:482\n327#1:486\n327#1:488\n327#1:489\n327#1,4:490\n327#1:494\n327#1:496\n327#1:497\n327#1,13:498\n327#1:511\n327#1,2:512\n327#1:514\n327#1,2:515\n327#1:517\n327#1:518\n327#1:519\n327#1,2:520\n327#1:522\n327#1:523\n327#1,5:524\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 55
    fill-array-data v0, :array_0

    sput-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 327
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_59

    .line 358
    aget-byte v7, v0, v4

    const/16 v8, 0x7f

    const/16 v9, 0x9f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_13

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_0

    return v5

    :cond_0
    if-eq v7, v13, :cond_5

    if-eq v7, v11, :cond_5

    if-ltz v7, :cond_1

    if-ge v10, v7, :cond_3

    :cond_1
    if-le v8, v7, :cond_2

    goto :goto_1

    :cond_2
    if-lt v9, v7, :cond_4

    :cond_3
    move/from16 v6, v17

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    :cond_5
    if-ne v7, v12, :cond_7

    :cond_6
    return v16

    :cond_7
    if-ge v7, v14, :cond_8

    move/from16 v6, v17

    goto :goto_3

    :cond_8
    const/4 v6, 0x2

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    :goto_4
    move/from16 v5, v18

    if-ge v4, v2, :cond_12

    .line 367
    aget-byte v7, v0, v4

    if-ltz v7, :cond_12

    add-int/lit8 v7, v4, 0x1

    .line 368
    aget-byte v4, v0, v4

    add-int/lit8 v18, v5, 0x1

    if-ne v5, v1, :cond_9

    return v6

    :cond_9
    if-eq v4, v13, :cond_e

    if-eq v4, v11, :cond_e

    if-ltz v4, :cond_a

    if-ge v10, v4, :cond_c

    :cond_a
    if-le v8, v4, :cond_b

    goto :goto_5

    :cond_b
    if-lt v9, v4, :cond_d

    :cond_c
    move/from16 v5, v17

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_f

    :cond_e
    if-ne v4, v12, :cond_10

    :cond_f
    return v16

    :cond_10
    if-ge v4, v14, :cond_11

    move/from16 v4, v17

    goto :goto_7

    :cond_11
    const/4 v4, 0x2

    :goto_7
    add-int/2addr v6, v4

    move v4, v7

    goto :goto_4

    :cond_12
    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto :goto_0

    :cond_13
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_24

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_15

    if-ne v6, v1, :cond_14

    return v5

    :cond_14
    return v16

    .line 379
    :cond_15
    aget-byte v7, v0, v4

    .line 380
    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_16

    move/from16 v15, v17

    goto :goto_8

    :cond_16
    const/4 v15, 0x0

    :goto_8
    if-nez v15, :cond_18

    if-ne v6, v1, :cond_17

    return v5

    :cond_17
    return v16

    :cond_18
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_1a

    if-ne v6, v1, :cond_19

    return v5

    :cond_19
    return v16

    :cond_1a
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1b

    return v5

    :cond_1b
    if-eq v3, v13, :cond_20

    if-eq v3, v11, :cond_20

    if-ltz v3, :cond_1c

    if-ge v10, v3, :cond_1e

    :cond_1c
    if-le v8, v3, :cond_1d

    goto :goto_9

    :cond_1d
    if-lt v9, v3, :cond_1f

    :cond_1e
    move/from16 v6, v17

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_21

    :cond_20
    if-ne v3, v12, :cond_22

    :cond_21
    return v16

    :cond_22
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_23

    goto :goto_b

    :cond_23
    const/16 v17, 0x2

    :goto_b
    add-int v5, v5, v17

    add-int/lit8 v4, v4, 0x2

    :goto_c
    move v6, v7

    goto/16 :goto_0

    :cond_24
    shr-int/lit8 v3, v7, 0x4

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_26

    if-ne v6, v1, :cond_25

    return v5

    :cond_25
    return v16

    .line 419
    :cond_26
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    .line 420
    aget-byte v15, v0, v15

    and-int/lit16 v12, v15, 0xc0

    if-ne v12, v14, :cond_27

    move/from16 v12, v17

    goto :goto_d

    :cond_27
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_29

    if-ne v6, v1, :cond_28

    return v5

    :cond_28
    return v16

    .line 428
    :cond_29
    aget-byte v3, v0, v3

    and-int/lit16 v12, v3, 0xc0

    if-ne v12, v14, :cond_2a

    move/from16 v12, v17

    goto :goto_e

    :cond_2a
    const/4 v12, 0x0

    :goto_e
    if-nez v12, :cond_2c

    if-ne v6, v1, :cond_2b

    return v5

    :cond_2b
    return v16

    :cond_2c
    const v12, -0x1e080

    xor-int/2addr v3, v12

    shl-int/lit8 v12, v15, 0x6

    xor-int/2addr v3, v12

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_2e

    if-ne v6, v1, :cond_2d

    return v5

    :cond_2d
    return v16

    :cond_2e
    const v7, 0xdfff

    const v12, 0xd800

    if-le v12, v3, :cond_2f

    goto :goto_f

    :cond_2f
    if-lt v7, v3, :cond_31

    if-ne v6, v1, :cond_30

    return v5

    :cond_30
    return v16

    :cond_31
    :goto_f
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_32

    return v5

    :cond_32
    if-eq v3, v13, :cond_37

    if-eq v3, v11, :cond_37

    if-ltz v3, :cond_33

    if-ge v10, v3, :cond_35

    :cond_33
    if-le v8, v3, :cond_34

    goto :goto_10

    :cond_34
    if-lt v9, v3, :cond_36

    :cond_35
    move/from16 v6, v17

    goto :goto_11

    :cond_36
    :goto_10
    const/4 v6, 0x0

    :goto_11
    if-nez v6, :cond_38

    :cond_37
    const v6, 0xfffd

    if-ne v3, v6, :cond_39

    :cond_38
    return v16

    :cond_39
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_3a

    goto :goto_12

    :cond_3a
    const/16 v17, 0x2

    :goto_12
    add-int v5, v5, v17

    add-int/lit8 v4, v4, 0x3

    goto :goto_c

    :cond_3b
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_57

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_3d

    if-ne v6, v1, :cond_3c

    return v5

    :cond_3c
    return v16

    .line 475
    :cond_3d
    aget-byte v7, v0, v4

    add-int/lit8 v12, v4, 0x1

    .line 476
    aget-byte v12, v0, v12

    and-int/lit16 v15, v12, 0xc0

    if-ne v15, v14, :cond_3e

    move/from16 v15, v17

    goto :goto_13

    :cond_3e
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_40

    if-ne v6, v1, :cond_3f

    return v5

    :cond_3f
    return v16

    :cond_40
    add-int/lit8 v15, v4, 0x2

    .line 484
    aget-byte v15, v0, v15

    and-int/lit16 v9, v15, 0xc0

    if-ne v9, v14, :cond_41

    move/from16 v9, v17

    goto :goto_14

    :cond_41
    const/4 v9, 0x0

    :goto_14
    if-nez v9, :cond_43

    if-ne v6, v1, :cond_42

    return v5

    :cond_42
    return v16

    .line 492
    :cond_43
    aget-byte v3, v0, v3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v14, :cond_44

    move/from16 v9, v17

    goto :goto_15

    :cond_44
    const/4 v9, 0x0

    :goto_15
    if-nez v9, :cond_46

    if-ne v6, v1, :cond_45

    return v5

    :cond_45
    return v16

    :cond_46
    const v9, 0x381f80

    xor-int/2addr v3, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v3, v9

    shl-int/lit8 v9, v12, 0xc

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_48

    if-ne v6, v1, :cond_47

    return v5

    :cond_47
    return v16

    :cond_48
    const v7, 0xdfff

    const v9, 0xd800

    if-le v9, v3, :cond_49

    goto :goto_16

    :cond_49
    if-lt v7, v3, :cond_4b

    if-ne v6, v1, :cond_4a

    return v5

    :cond_4a
    return v16

    :cond_4b
    :goto_16
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_4d

    if-ne v6, v1, :cond_4c

    return v5

    :cond_4c
    return v16

    :cond_4d
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_4e

    return v5

    :cond_4e
    if-eq v3, v13, :cond_53

    if-eq v3, v11, :cond_53

    if-ltz v3, :cond_4f

    if-ge v10, v3, :cond_51

    :cond_4f
    if-le v8, v3, :cond_50

    goto :goto_17

    :cond_50
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_52

    :cond_51
    move/from16 v6, v17

    goto :goto_18

    :cond_52
    :goto_17
    const/4 v6, 0x0

    :goto_18
    if-nez v6, :cond_54

    :cond_53
    const v6, 0xfffd

    if-ne v3, v6, :cond_55

    :cond_54
    return v16

    :cond_55
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_56

    goto :goto_19

    :cond_56
    const/16 v17, 0x2

    :goto_19
    add-int v5, v5, v17

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_c

    :cond_57
    if-ne v6, v1, :cond_58

    return v5

    :cond_58
    return v16

    :cond_59
    return v5
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1

    .line 54
    sget-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

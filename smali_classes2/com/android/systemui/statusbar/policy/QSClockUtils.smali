.class public Lcom/android/systemui/statusbar/policy/QSClockUtils;
.super Ljava/lang/Object;
.source "QSClockUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    xor-int/lit8 v2, v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    move v2, v1

    :goto_2
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 64
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xef00

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xef01

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static getPersianCalendar(Landroid/content/Context;)Ljava/lang/String;
    .locals 17

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x13

    const/4 v6, 0x2

    const/16 v7, 0x7ed

    .line 88
    invoke-virtual {v1, v7, v6, v5}, Ljava/util/Calendar;->set(III)V

    const/16 v7, 0x7ee

    const/16 v8, 0x14

    .line 89
    invoke-virtual {v2, v7, v6, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v9, 0x7f1

    .line 90
    invoke-virtual {v3, v9, v6, v5}, Ljava/util/Calendar;->set(III)V

    const/16 v5, 0x7f2

    .line 91
    invoke-virtual {v4, v5, v6, v8}, Ljava/util/Calendar;->set(III)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    :cond_1
    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->add(II)V

    move v1, v11

    goto :goto_0

    :cond_2
    move v1, v10

    .line 99
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 103
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v11

    .line 104
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    new-array v4, v4, [I

    .line 106
    fill-array-data v4, :array_0

    const/16 v6, 0xc

    new-array v6, v6, [I

    .line 107
    fill-array-data v6, :array_1

    .line 135
    rem-int/lit8 v9, v0, 0x4

    const/16 v12, 0x4f

    const/16 v13, 0xa

    const/16 v14, 0xba

    const/16 v15, 0x1f

    const/16 v16, 0x1e

    if-eqz v9, :cond_9

    add-int/lit8 v6, v3, -0x1

    .line 136
    aget v4, v4, v6

    add-int/2addr v4, v2

    if-le v4, v12, :cond_6

    sub-int/2addr v4, v12

    if-gt v4, v14, :cond_4

    .line 141
    rem-int/lit8 v6, v4, 0x1f

    if-eqz v6, :cond_3

    .line 147
    div-int/2addr v4, v15

    :goto_1
    add-int/2addr v4, v11

    goto :goto_3

    .line 143
    :cond_3
    div-int/2addr v4, v15

    goto :goto_5

    :cond_4
    sub-int/2addr v4, v14

    .line 155
    rem-int/lit8 v6, v4, 0x1e

    if-eqz v6, :cond_5

    .line 161
    div-int/lit8 v4, v4, 0x1e

    :goto_2
    add-int/lit8 v4, v4, 0x7

    :goto_3
    move v15, v6

    goto :goto_5

    .line 157
    :cond_5
    div-int/lit8 v4, v4, 0x1e

    :goto_4
    add-int/lit8 v4, v4, 0x6

    move/from16 v15, v16

    :goto_5
    add-int/lit16 v6, v0, -0x26d

    goto :goto_b

    :cond_6
    const/16 v6, 0x7cc

    if-le v0, v6, :cond_7

    if-ne v9, v11, :cond_7

    const/16 v6, 0xb

    goto :goto_6

    :cond_7
    move v6, v13

    :goto_6
    add-int/2addr v4, v6

    .line 175
    rem-int/lit8 v6, v4, 0x1e

    if-eqz v6, :cond_8

    .line 181
    div-int/lit8 v4, v4, 0x1e

    goto :goto_8

    .line 177
    :cond_8
    div-int/lit8 v4, v4, 0x1e

    goto :goto_9

    :cond_9
    add-int/lit8 v4, v3, -0x1

    .line 188
    aget v4, v6, v4

    add-int/2addr v4, v2

    const/16 v6, 0x7cc

    if-lt v0, v6, :cond_a

    goto :goto_7

    :cond_a
    const/16 v12, 0x50

    :goto_7
    if-le v4, v12, :cond_e

    sub-int/2addr v4, v12

    if-gt v4, v14, :cond_c

    .line 199
    rem-int/lit8 v6, v4, 0x1f

    if-eqz v6, :cond_b

    .line 205
    div-int/2addr v4, v15

    goto :goto_1

    .line 201
    :cond_b
    div-int/2addr v4, v15

    goto :goto_5

    :cond_c
    sub-int/2addr v4, v14

    .line 213
    rem-int/lit8 v6, v4, 0x1e

    if-eqz v6, :cond_d

    .line 219
    div-int/lit8 v4, v4, 0x1e

    goto :goto_2

    .line 215
    :cond_d
    div-int/lit8 v4, v4, 0x1e

    goto :goto_4

    :cond_e
    add-int/2addr v4, v13

    .line 228
    rem-int/lit8 v6, v4, 0x1e

    if-eqz v6, :cond_f

    .line 234
    div-int/lit8 v4, v4, 0x1e

    :goto_8
    add-int/2addr v4, v13

    move v15, v6

    goto :goto_a

    .line 230
    :cond_f
    div-int/lit8 v4, v4, 0x1e

    :goto_9
    add-int/lit8 v4, v4, 0x9

    move/from16 v15, v16

    :goto_a
    add-int/lit16 v6, v0, -0x26e

    :goto_b
    if-nez v1, :cond_11

    if-eq v0, v7, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    const/4 v0, 0x3

    if-ne v3, v0, :cond_11

    if-ne v2, v8, :cond_11

    add-int/lit8 v15, v15, 0x1

    .line 247
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPersianCalendar : year = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " month = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "%d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 254
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$array;->persian_month_name:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 259
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 260
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "fa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 262
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$array;->persian_month_name_for_fa:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 267
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

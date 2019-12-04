.class Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.super Ljava/lang/Object;
.source "ImageOptionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createImageOption(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    .locals 11

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 33
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 36
    new-instance v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    invoke-direct {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    .line 38
    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realWidth:I

    .line 39
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realHeight:I

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    iput-boolean p0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "/portrait"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_5

    :cond_1
    const-string v5, "/landscape"

    .line 46
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    iput v2, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 48
    iput v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_6

    :cond_2
    const-string v5, "/custom"

    .line 49
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :try_start_0
    const-string/jumbo p0, "width"

    .line 53
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "height"

    .line 54
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    move p0, v0

    .line 56
    :goto_1
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v5, v0

    :goto_2
    const/4 v6, 0x0

    if-eqz p0, :cond_7

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    if-ge p0, v5, :cond_4

    if-gt p0, v1, :cond_4

    if-gt v5, v2, :cond_4

    int-to-float v2, p0

    int-to-float v1, v1

    div-float v1, v2, v1

    goto :goto_3

    :cond_4
    if-le p0, v5, :cond_5

    if-gt p0, v2, :cond_5

    if-gt v5, v1, :cond_5

    int-to-float v1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_3

    :cond_5
    move v1, v7

    :goto_3
    cmpl-float v2, v1, v7

    if-nez v2, :cond_6

    return-object v6

    .line 73
    :cond_6
    iput v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 74
    iput p0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 75
    iput v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_6

    :cond_7
    :goto_4
    return-object v6

    .line 44
    :cond_8
    :goto_5
    iput v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 45
    iput v2, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    .line 78
    :cond_9
    :goto_6
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array v1, p1, [Z

    .line 79
    fill-array-data v1, :array_0

    const-string v2, "&"

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "="

    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    goto :goto_7

    .line 87
    :cond_b
    aget-object v5, v2, v0

    .line 88
    aget-object v2, v2, v4

    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v7, "color_main"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_9

    :sswitch_1
    const-string/jumbo v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v8

    goto :goto_9

    :sswitch_2
    const-string/jumbo v7, "white_theme"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v0

    goto :goto_9

    :sswitch_3
    const-string v7, "color_bg_main"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v9

    goto :goto_9

    :sswitch_4
    const-string v7, "color_bg_second"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, p1

    goto :goto_9

    :sswitch_5
    const-string v7, "color_second"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    goto :goto_9

    :cond_c
    :goto_8
    move v5, v10

    :goto_9
    if-eqz v5, :cond_12

    if-eq v5, v4, :cond_11

    if-eq v5, v6, :cond_10

    if-eq v5, v9, :cond_14

    if-eq v5, p1, :cond_f

    if-eq v5, v8, :cond_d

    goto :goto_a

    :cond_d
    const-string/jumbo v5, "wallpaper"

    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 116
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto :goto_a

    :cond_e
    const-string v5, "clock"

    .line 117
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 118
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto :goto_a

    :cond_f
    move v6, v9

    goto :goto_b

    :cond_10
    move v6, v4

    goto :goto_b

    :cond_11
    move v6, v0

    goto :goto_b

    :cond_12
    const-string/jumbo v5, "true"

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "on"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_c

    :cond_13
    :goto_a
    move v6, v10

    :cond_14
    :goto_b
    if-le v6, v10, :cond_a

    .line 126
    :try_start_2
    iget-object v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/16 v7, 0x10

    invoke-static {v2, v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v5, v6

    .line 127
    aput-boolean v4, v1, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_15
    :goto_c
    if-ge v0, p1, :cond_16

    .line 95
    iget-object p0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const v1, -0xbababb

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    return-object v3

    .line 134
    :cond_17
    array-length p0, v1

    :goto_d
    if-ge v0, p0, :cond_19

    aget-boolean p1, v1, v0

    if-nez p1, :cond_18

    .line 136
    iput-boolean v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    goto :goto_e

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    :goto_e
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70ca7330 -> :sswitch_5
        -0x6d5ea82e -> :sswitch_4
        -0x289da769 -> :sswitch_3
        -0x223bddcd -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x4cdbb515 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

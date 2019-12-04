.class public Lcom/android/systemui/infinity/preview/ThemeFactory;
.super Ljava/lang/Object;
.source "ThemeFactory.java"


# static fields
.field public static final THEME_NAME_BLACK:Ljava/lang/String; = "black"

.field public static final THEME_NAME_BLUE:Ljava/lang/String; = "blue"

.field public static final THEME_NAME_GOLD:Ljava/lang/String; = "gold"

.field public static final THEME_NAME_ORCHID:Ljava/lang/String; = "orchid"

.field public static final THEME_TYPE_BLACK:I = 0x0

.field public static final THEME_TYPE_BLUE:I = 0x1

.field public static final THEME_TYPE_GOLD:I = 0x2

.field public static final THEME_TYPE_ORCHID:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 16

    move/from16 v0, p0

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/high16 v8, -0x1000000

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-nez v0, :cond_0

    new-array v0, v14, [I

    const/16 v15, 0x33

    const/16 v1, 0x46

    const/16 v12, 0x4f

    .line 42
    invoke-static {v15, v1, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v13

    aput v8, v0, v11

    aput v8, v0, v10

    new-array v1, v14, [F

    .line 48
    fill-array-data v1, :array_0

    const/16 v8, 0xb

    new-array v12, v8, [F

    .line 54
    fill-array-data v12, :array_1

    new-array v15, v8, [I

    const/16 v9, 0xf

    .line 68
    invoke-static {v8, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v15, v13

    const/16 v8, 0xd

    const/16 v9, 0x11

    const/16 v13, 0x1f

    .line 69
    invoke-static {v8, v9, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v15, v11

    const/16 v8, 0x22

    const/16 v9, 0x28

    const/16 v11, 0x35

    .line 70
    invoke-static {v8, v9, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v15, v10

    const/16 v8, 0x41

    const/16 v9, 0x49

    const/16 v10, 0x59

    .line 71
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v15, v14

    const/16 v8, 0x71

    const/16 v9, 0x70

    const/16 v10, 0x7d

    .line 72
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v15, v4

    const/16 v4, 0x93

    const/16 v8, 0x8c

    const/16 v9, 0x95

    .line 73
    invoke-static {v4, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v15, v3

    const/16 v3, 0xa3

    const/16 v4, 0x96

    const/16 v8, 0xa1

    .line 74
    invoke-static {v3, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v6

    const/16 v3, 0xa1

    const/16 v4, 0x91

    const/16 v6, 0xa2

    .line 75
    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v7

    const/16 v3, 0x7e

    const/16 v4, 0x7f

    const/16 v6, 0x9a

    .line 76
    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v2

    const/16 v2, 0x65

    const/16 v3, 0x6d

    const/16 v4, 0x85

    .line 77
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v15, v5

    const/16 v2, 0x49

    const/16 v3, 0x55

    const/16 v4, 0x6b

    .line 78
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v15, v3

    .line 81
    new-instance v2, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v2}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    .line 82
    iput-object v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    .line 83
    iput-object v1, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    .line 84
    iput-object v15, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    .line 85
    iput-object v12, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v0, 0x0

    .line 92
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    .line 93
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    .line 94
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v0, 0x45390000    # 2960.0f

    .line 95
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v2

    :cond_0
    if-ne v0, v11, :cond_1

    new-array v0, v14, [I

    const/16 v1, 0x41

    .line 103
    invoke-static {v13, v13, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v13

    aput v8, v0, v11

    aput v8, v0, v10

    new-array v1, v14, [F

    .line 109
    fill-array-data v1, :array_2

    const/16 v8, 0xa

    new-array v9, v8, [I

    .line 116
    invoke-static {v13, v14, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v9, v13

    const/16 v12, 0x27

    .line 117
    invoke-static {v11, v8, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v9, v11

    const/16 v8, 0x2c

    const/16 v11, 0x5e

    .line 118
    invoke-static {v7, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v10

    const/16 v8, 0x29

    const/16 v10, 0x62

    const/16 v11, 0x93

    .line 119
    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v14

    const/16 v8, 0x54

    const/16 v10, 0x83

    const/16 v11, 0xa2

    .line 120
    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v4

    const/16 v4, 0x79

    const/16 v8, 0x98

    const/16 v10, 0xa7

    .line 121
    invoke-static {v4, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v9, v3

    const/16 v3, 0x83

    const/16 v4, 0x9b

    const/16 v8, 0xa6

    .line 122
    invoke-static {v3, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v6

    const/16 v3, 0x7c

    const/16 v4, 0x94

    const/16 v6, 0xa3

    .line 123
    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v7

    const/16 v3, 0x54

    const/16 v4, 0x78

    const/16 v6, 0x94

    .line 124
    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v2

    const/16 v2, 0x26

    const/16 v3, 0x44

    const/16 v4, 0x66

    .line 125
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v9, v5

    const/16 v2, 0xa

    new-array v2, v2, [F

    .line 128
    fill-array-data v2, :array_3

    .line 130
    new-instance v3, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v3}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    .line 131
    iput-object v0, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    .line 132
    iput-object v1, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    .line 133
    iput-object v9, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    .line 134
    iput-object v2, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v0, 0x0

    .line 142
    iput v0, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    .line 143
    iput v0, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    .line 144
    iput v0, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v0, 0x45390000    # 2960.0f

    .line 145
    iput v0, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v3

    :cond_1
    if-ne v0, v10, :cond_2

    new-array v0, v14, [I

    const/16 v1, 0x3f

    const/16 v9, 0x2e

    const/16 v12, 0x18

    .line 154
    invoke-static {v1, v9, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v13

    aput v8, v0, v11

    aput v8, v0, v10

    new-array v1, v14, [F

    .line 160
    fill-array-data v1, :array_4

    new-array v8, v5, [F

    .line 167
    fill-array-data v8, :array_5

    new-array v5, v5, [I

    const/16 v9, 0x70

    const/16 v12, 0x43

    const/16 v15, 0x28

    .line 179
    invoke-static {v9, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v5, v13

    const/16 v9, 0x94

    const/16 v12, 0x63

    const/16 v13, 0x2a

    .line 180
    invoke-static {v9, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v5, v11

    const/16 v9, 0xb5

    const/16 v11, 0x99

    const/16 v12, 0x62

    .line 181
    invoke-static {v9, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v5, v10

    const/16 v9, 0x9f

    const/16 v11, 0x88

    const/16 v12, 0x76

    .line 182
    invoke-static {v9, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v5, v14

    const/16 v9, 0x6c

    const/16 v11, 0x64

    const/16 v12, 0x6a

    .line 183
    invoke-static {v9, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v5, v4

    const/16 v4, 0x30

    const/16 v9, 0x38

    const/16 v11, 0x50

    .line 184
    invoke-static {v4, v9, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0xf

    const/16 v4, 0x1e

    const/16 v9, 0x40

    .line 185
    invoke-static {v3, v4, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v5, v6

    const/16 v3, 0x14

    const/16 v4, 0x30

    const/16 v9, 0xa

    .line 186
    invoke-static {v9, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v5, v7

    const/16 v3, 0x1a

    .line 187
    invoke-static {v10, v6, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v5, v2

    .line 190
    new-instance v2, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v2}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    .line 191
    iput-object v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    .line 192
    iput-object v1, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    .line 193
    iput-object v5, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    .line 194
    iput-object v8, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v0, 0x0

    .line 202
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    .line 203
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    .line 204
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v0, 0x45390000    # 2960.0f

    .line 205
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v2

    :cond_2
    if-ne v0, v14, :cond_3

    new-array v0, v14, [I

    const/16 v1, 0x2e

    const/16 v9, 0x40

    .line 213
    invoke-static {v1, v13, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v13

    aput v8, v0, v11

    aput v8, v0, v10

    new-array v1, v14, [F

    .line 219
    fill-array-data v1, :array_6

    const/16 v8, 0xa

    new-array v9, v8, [F

    .line 225
    fill-array-data v9, :array_7

    new-array v12, v8, [I

    const/16 v8, 0x58

    const/16 v15, 0x41

    const/16 v5, 0x67

    .line 239
    invoke-static {v8, v15, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v12, v13

    const/16 v5, 0x7f

    const/16 v8, 0x5e

    const/16 v13, 0x80

    .line 240
    invoke-static {v5, v8, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v12, v11

    const/16 v5, 0xb1

    const/16 v8, 0x7c

    const/16 v11, 0x8e

    .line 241
    invoke-static {v5, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v12, v10

    const/16 v5, 0xca

    const/16 v8, 0x91

    const/16 v10, 0xa3

    .line 242
    invoke-static {v5, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v12, v14

    const/16 v5, 0xc9

    const/16 v8, 0x9a

    const/16 v10, 0xb3

    .line 243
    invoke-static {v5, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v12, v4

    const/16 v4, 0xb9

    const/16 v5, 0x90

    const/16 v8, 0xb8

    .line 244
    invoke-static {v4, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v12, v3

    const/16 v3, 0x9c

    const/16 v4, 0x7a

    const/16 v5, 0xb0

    .line 245
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v12, v6

    const/16 v3, 0x62

    const/16 v4, 0x4d

    const/16 v5, 0x89

    .line 246
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v12, v7

    const/16 v3, 0x34

    const/16 v4, 0x29

    const/16 v5, 0x59

    .line 247
    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v12, v2

    const/16 v2, 0x1d

    const/16 v3, 0xa

    .line 248
    invoke-static {v3, v7, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v12, v3

    .line 251
    new-instance v2, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v2}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    .line 252
    iput-object v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    .line 253
    iput-object v1, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    .line 254
    iput-object v12, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    .line 255
    iput-object v9, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v0, 0x0

    .line 263
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    .line 264
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    .line 265
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v0, 0x45390000    # 2960.0f

    .line 266
    iput v0, v2, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v2

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e75c28f    # 0.24f
        0x3ebd70a4    # 0.37f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f2b851f    # 0.67f
        0x3f428f5c    # 0.76f
        0x3f5eb852    # 0.87f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e800000    # 0.25f
        0x3ec28f5c    # 0.38f
        0x3f000000    # 0.5f
        0x3f2147ae    # 0.63f
        0x3f333333    # 0.7f
        0x3f428f5c    # 0.76f
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3db7e910    # 0.0898f
        0x3e572474    # 0.2101f
        0x3eadfa44    # 0.3398f
        0x3eeb5dcc    # 0.4597f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3df58e22    # 0.1199f
        0x3e79096c    # 0.2432f
        0x3eadfa44    # 0.3398f
        0x3ed6fd22    # 0.4199f
        0x3f000000    # 0.5f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getThemeModel(Ljava/lang/String;)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "blue"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 25
    invoke-static {p0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "gold"

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    .line 27
    invoke-static {p0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "orchid"

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    .line 29
    invoke-static {p0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object p0

    return-object p0

    .line 31
    :cond_3
    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object p0

    return-object p0

    .line 22
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object p0

    return-object p0
.end method

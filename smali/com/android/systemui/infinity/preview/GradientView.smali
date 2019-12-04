.class public Lcom/android/systemui/infinity/preview/GradientView;
.super Landroid/view/View;
.source "GradientView.java"


# static fields
.field private static final COLOR_LIST:[Ljava/lang/String;

.field private static final GRADIENT_COLOR:[[[I

.field private static final GRADIENT_POSITION:[[I


# instance fields
.field private mGradient:Landroid/graphics/LinearGradient;

.field private mHeight:I

.field private mHomeBGColor:[[I

.field private mHomeBGPosition:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "black"

    const-string v1, "orchid"

    const-string/jumbo v2, "silver"

    const-string v3, "blue"

    const-string v4, "gold"

    const-string v5, "pink"

    .line 31
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/preview/GradientView;->COLOR_LIST:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 35
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_POSITION:[[I

    new-array v1, v0, [[[I

    new-array v2, v0, [[I

    new-array v9, v6, [I

    .line 86
    fill-array-data v9, :array_6

    aput-object v9, v2, v3

    new-array v9, v6, [I

    fill-array-data v9, :array_7

    aput-object v9, v2, v4

    new-array v9, v6, [I

    fill-array-data v9, :array_8

    aput-object v9, v2, v5

    new-array v9, v6, [I

    fill-array-data v9, :array_9

    aput-object v9, v2, v6

    new-array v9, v6, [I

    fill-array-data v9, :array_a

    aput-object v9, v2, v7

    new-array v9, v6, [I

    fill-array-data v9, :array_b

    aput-object v9, v2, v8

    aput-object v2, v1, v3

    new-array v2, v0, [[I

    new-array v9, v6, [I

    fill-array-data v9, :array_c

    aput-object v9, v2, v3

    new-array v9, v6, [I

    fill-array-data v9, :array_d

    aput-object v9, v2, v4

    new-array v9, v6, [I

    fill-array-data v9, :array_e

    aput-object v9, v2, v5

    new-array v9, v6, [I

    fill-array-data v9, :array_f

    aput-object v9, v2, v6

    new-array v9, v6, [I

    fill-array-data v9, :array_10

    aput-object v9, v2, v7

    new-array v9, v6, [I

    fill-array-data v9, :array_11

    aput-object v9, v2, v8

    aput-object v2, v1, v4

    new-array v2, v0, [[I

    new-array v9, v6, [I

    fill-array-data v9, :array_12

    aput-object v9, v2, v3

    new-array v9, v6, [I

    fill-array-data v9, :array_13

    aput-object v9, v2, v4

    new-array v9, v6, [I

    fill-array-data v9, :array_14

    aput-object v9, v2, v5

    new-array v9, v6, [I

    fill-array-data v9, :array_15

    aput-object v9, v2, v6

    new-array v9, v6, [I

    fill-array-data v9, :array_16

    aput-object v9, v2, v7

    new-array v9, v6, [I

    fill-array-data v9, :array_17

    aput-object v9, v2, v8

    aput-object v2, v1, v5

    new-array v2, v0, [[I

    new-array v9, v6, [I

    fill-array-data v9, :array_18

    aput-object v9, v2, v3

    new-array v9, v6, [I

    fill-array-data v9, :array_19

    aput-object v9, v2, v4

    new-array v9, v6, [I

    fill-array-data v9, :array_1a

    aput-object v9, v2, v5

    new-array v9, v6, [I

    fill-array-data v9, :array_1b

    aput-object v9, v2, v6

    new-array v9, v6, [I

    fill-array-data v9, :array_1c

    aput-object v9, v2, v7

    new-array v9, v6, [I

    fill-array-data v9, :array_1d

    aput-object v9, v2, v8

    aput-object v2, v1, v6

    new-array v2, v0, [[I

    new-array v9, v6, [I

    fill-array-data v9, :array_1e

    aput-object v9, v2, v3

    new-array v9, v6, [I

    fill-array-data v9, :array_1f

    aput-object v9, v2, v4

    new-array v9, v6, [I

    fill-array-data v9, :array_20

    aput-object v9, v2, v5

    new-array v9, v6, [I

    fill-array-data v9, :array_21

    aput-object v9, v2, v6

    new-array v9, v6, [I

    fill-array-data v9, :array_22

    aput-object v9, v2, v7

    new-array v9, v6, [I

    fill-array-data v9, :array_23

    aput-object v9, v2, v8

    aput-object v2, v1, v7

    new-array v0, v0, [[I

    new-array v2, v6, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v3

    new-array v2, v6, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v5

    new-array v2, v6, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v6

    new-array v2, v6, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v7

    new-array v2, v6, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v8

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_COLOR:[[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1bc
        0x40c
        0x534
        0x794
        0xb90
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0xd
        0x37
    .end array-data

    :array_9
    .array-data 4
        0x0
        0xd
        0x37
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x24
        0x10
        0x31
    .end array-data

    :array_f
    .array-data 4
        0x24
        0x10
        0x31
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x2b
        0x2a
        0x39
    .end array-data

    :array_15
    .array-data 4
        0x2b
        0x2a
        0x39
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0x23
        0x43
    .end array-data

    :array_1b
    .array-data 4
        0x10
        0x23
        0x43
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x2b
        0x20
        0xf
    .end array-data

    :array_21
    .array-data 4
        0x2b
        0x20
        0xf
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 4
        0x3f
        0x2b
        0x2a
    .end array-data

    :array_27
    .array-data 4
        0x3f
        0x2b
        0x2a
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private makeGradient()V
    .locals 10

    .line 172
    iget v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    if-nez v1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    array-length v1, v0

    new-array v7, v1, [I

    .line 177
    array-length v0, v0

    new-array v8, v0, [F

    const/4 v0, 0x0

    move v1, v0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 180
    aget-object v3, v2, v1

    aget v3, v3, v0

    aget-object v4, v2, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    aget-object v2, v2, v1

    const/4 v6, 0x2

    aget v2, v2, v6

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v7, v1

    .line 181
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    aget v3, v2, v1

    int-to-float v3, v3

    array-length v4, v2

    sub-int/2addr v4, v5

    aget v2, v2, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    aput v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    int-to-float v6, v1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mGradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/GradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 153
    iput p1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mWidth:I

    .line 154
    iput p2, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHeight:I

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GradientView;->makeGradient()V

    return-void
.end method

.method public setGradientColor(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_0
    sget-object v2, Lcom/android/systemui/infinity/preview/GradientView;->COLOR_LIST:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 161
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    sget-object p1, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_COLOR:[[[I

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGColor:[[I

    .line 167
    sget-object p1, Lcom/android/systemui/infinity/preview/GradientView;->GRADIENT_POSITION:[[I

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/GradientView;->mHomeBGPosition:[I

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GradientView;->makeGradient()V

    return-void
.end method

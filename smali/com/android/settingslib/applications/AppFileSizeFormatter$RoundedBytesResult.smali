.class Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "AppFileSizeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/AppFileSizeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundedBytes:J

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    .line 225
    iput-object p2, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 226
    iput p3, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    .line 227
    iput-wide p4, p0, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundedBytes:J

    return-void
.end method

.method static roundBytes(JI)Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
    .locals 22

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    neg-long v0, v0

    :cond_1
    long-to-float v0, v0

    .line 237
    sget-object v1, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const/high16 v7, 0x44610000    # 900.0f

    cmpl-float v8, v0, v7

    const-wide/16 v9, 0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    const-wide/16 v12, 0x3e8

    if-lez v8, :cond_2

    .line 240
    sget-object v1, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    div-float/2addr v0, v11

    move-wide v14, v12

    goto :goto_1

    :cond_2
    move-wide v14, v9

    :goto_1
    cmpl-float v8, v0, v7

    if-lez v8, :cond_3

    .line 245
    sget-object v1, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_3
    cmpl-float v8, v0, v7

    if-lez v8, :cond_4

    .line 250
    sget-object v1, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_4
    cmpl-float v8, v0, v7

    if-lez v8, :cond_5

    .line 255
    sget-object v1, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_5
    cmpl-float v7, v0, v7

    if-lez v7, :cond_6

    .line 260
    invoke-static {}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->access$000()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_6
    move-object/from16 v18, v1

    cmp-long v1, v14, v9

    const/16 v7, 0x64

    const/4 v8, 0x2

    if-eqz v1, :cond_b

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_9

    :cond_8
    move/from16 v19, v8

    goto :goto_3

    :cond_9
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    move v7, v1

    move/from16 v19, v6

    goto :goto_3

    :cond_a
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8

    :cond_b
    :goto_2
    move/from16 v19, v5

    move v7, v6

    :goto_3
    if-eqz v4, :cond_c

    neg-float v0, v0

    :cond_c
    move/from16 v17, v0

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    int-to-float v0, v7

    mul-float v0, v0, v17

    .line 301
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v14

    int-to-long v2, v7

    div-long v2, v0, v2

    :goto_4
    move-wide/from16 v20, v2

    .line 303
    new-instance v0, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v0
.end method

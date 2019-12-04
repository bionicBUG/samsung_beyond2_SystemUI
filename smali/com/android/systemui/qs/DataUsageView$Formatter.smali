.class public Lcom/android/systemui/qs/DataUsageView$Formatter;
.super Ljava/lang/Object;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 362
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    .locals 16

    move-wide/from16 v0, p1

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    neg-long v0, v0

    :cond_2
    long-to-float v0, v0

    .line 415
    sget v1, Lcom/android/systemui/R$string;->byteShort:I

    const/high16 v8, 0x44610000    # 900.0f

    cmpl-float v9, v0, v8

    const-wide/16 v10, 0x1

    if-lez v9, :cond_3

    .line 418
    sget v1, Lcom/android/systemui/R$string;->kilobyteShort:I

    int-to-long v12, v2

    int-to-float v9, v2

    div-float/2addr v0, v9

    goto :goto_2

    :cond_3
    move-wide v12, v10

    :goto_2
    cmpl-float v9, v0, v8

    if-lez v9, :cond_4

    .line 423
    sget v1, Lcom/android/systemui/R$string;->megabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_4
    cmpl-float v9, v0, v8

    if-lez v9, :cond_5

    .line 428
    sget v1, Lcom/android/systemui/R$string;->gigabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_5
    cmpl-float v9, v0, v8

    if-lez v9, :cond_6

    .line 433
    sget v1, Lcom/android/systemui/R$string;->terabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_6
    cmpl-float v8, v0, v8

    if-lez v8, :cond_7

    .line 438
    sget v1, Lcom/android/systemui/R$string;->petabyteShort:I

    int-to-long v8, v2

    mul-long/2addr v12, v8

    int-to-float v2, v2

    div-float/2addr v0, v2

    :cond_7
    cmp-long v2, v12, v10

    const-string v8, "%.0f"

    const-string v9, "%.2f"

    const/16 v10, 0x64

    if-eqz v2, :cond_c

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_a

    :cond_9
    move-object v8, v9

    goto :goto_4

    :cond_a
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_b

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    const-string v8, "%.1f"

    move v10, v2

    goto :goto_4

    :cond_b
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    :cond_c
    :goto_3
    move v10, v7

    :goto_4
    if-eqz v5, :cond_d

    neg-float v0, v0

    :cond_d
    new-array v2, v7, [Ljava/lang/Object;

    .line 474
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    int-to-float v3, v10

    mul-float/2addr v0, v3

    .line 479
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v12

    int-to-long v5, v10

    div-long/2addr v3, v5

    :goto_5
    move-object/from16 v0, p0

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    move-result-object p1

    const p2, 0x10403c2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 384
    iget-object v2, p1, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static INFLEXION:F

.field private static final INFLEXIONS:[F

.field private static SPLINE_POSITION:[F

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F

.field private static final SPLINE_TIMES:[[F

.field private static sEnableSmoothFling:Z

.field private static sRegulateCurrentTimeInterval:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 617
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 624
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    .line 625
    sget-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    const/16 v1, 0x65

    .line 634
    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    .line 635
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v3, F

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    .line 636
    sget-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 637
    sget-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 645
    sput-boolean v2, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    .line 646
    sput-boolean v2, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 670
    sget-object v3, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 671
    aget v3, v3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float/2addr v3, v6

    sub-float v3, v6, v3

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    const/4 v7, 0x0

    :goto_1
    const/16 v10, 0x64

    if-ge v7, v10, :cond_4

    int-to-float v10, v7

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v10, v11

    move v10, v6

    :goto_2
    sub-float v12, v10, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v8

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v12, v14

    sub-float v16, v6, v12

    mul-float v15, v15, v16

    mul-float v17, v16, v4

    mul-float v18, v12, v3

    add-float v17, v17, v18

    mul-float v17, v17, v15

    mul-float v18, v12, v12

    mul-float v18, v18, v12

    add-float v17, v17, v18

    sub-float v19, v17, v11

    .line 685
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v13, v0

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v13, v20

    if-gez v0, :cond_2

    .line 692
    sget-object v0, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    mul-float v16, v16, v5

    add-float v16, v16, v12

    mul-float v15, v15, v16

    add-float v15, v15, v18

    aput v15, v0, v7

    move v0, v6

    :goto_3
    sub-float v10, v0, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v10, v9

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v12, v10, v14

    sub-float v15, v6, v10

    mul-float/2addr v12, v15

    mul-float v16, v15, v5

    add-float v16, v16, v10

    mul-float v16, v16, v12

    mul-float v17, v10, v10

    mul-float v17, v17, v10

    add-float v16, v16, v17

    sub-float v18, v16, v11

    .line 701
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    cmpg-double v1, v13, v20

    if-gez v1, :cond_0

    .line 708
    sget-object v0, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, v2

    mul-float/2addr v15, v4

    mul-float/2addr v10, v3

    add-float/2addr v15, v10

    mul-float/2addr v12, v15

    add-float v12, v12, v17

    aput v12, v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    cmpl-float v1, v16, v11

    if-lez v1, :cond_1

    move v0, v10

    goto :goto_3

    :cond_1
    move v9, v10

    goto :goto_3

    :cond_2
    cmpl-float v0, v17, v11

    if-lez v0, :cond_3

    move v10, v12

    goto :goto_4

    :cond_3
    move v8, v12

    :goto_4
    const/4 v0, 0x2

    goto :goto_2

    .line 714
    :cond_4
    sget-object v0, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    sget-object v1, Landroidx/appcompat/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    aput v6, v1, v10

    aput v6, v0, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

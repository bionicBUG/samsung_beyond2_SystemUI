.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# instance fields
.field private mBitmapError:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRegular:Landroid/graphics/Bitmap;

.field private mBitmapSuccess:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mDecoPatternEnabled:Z

.field private final mDiameterFactor:F

.field private mIsWhiteWp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 52
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    const p2, 0x3dcccccd    # 0.1f

    .line 53
    iput p2, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    const-string p0, "SecLockPatternView"

    const-string p1, "SecLockPatternView()"

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 7

    if-eqz p4, :cond_5

    .line 154
    iget-boolean p4, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    iget-boolean p4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_1

    .line 159
    iget-object p4, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 160
    :cond_1
    iget-object p4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_2

    .line 162
    iget-object p4, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 163
    :cond_2
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_4

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 156
    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 171
    :goto_2
    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 172
    iget v1, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 174
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 175
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    int-to-float v4, v0

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v1, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 180
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 181
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr p2, v4

    int-to-float p2, p2

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 184
    iget-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float p3, p3

    div-float/2addr p3, v5

    iget v1, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 185
    iget-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 186
    iget-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, v5

    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz p4, :cond_6

    .line 189
    iget-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private getLineRadius()F
    .locals 1

    .line 346
    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    return p0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$dimen;->theme_keyguard_pattern_dot_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    if-nez v0, :cond_0

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getScaledBitmapFor() return null - bitmap is null resId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecLockPatternView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 73
    invoke-static {v0, p0, p0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private hasBlackPatternDrawable()Z
    .locals 5

    .line 375
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo_black:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    sget v1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo_black:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo_black:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x2

    aput-object p0, v2, v1

    .line 379
    array-length p0, v2

    move v1, v3

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v4, v2, v1

    if-nez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private loadDecoPatternResources(Z)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->hasBlackPatternDrawable()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 351
    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo_black:I

    goto :goto_1

    .line 352
    :cond_1
    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    .line 351
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 353
    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo_black:I

    goto :goto_2

    .line 354
    :cond_2
    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    .line 353
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 355
    sget p1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo_black:I

    goto :goto_3

    .line 356
    :cond_3
    sget p1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    .line 355
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Bitmap;

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    aput-object v2, p1, v1

    iget-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    aput-object v2, p1, v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    aput-object v3, p1, v2

    .line 363
    array-length v2, p1

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    if-nez v4, :cond_4

    return v1

    .line 367
    :cond_4
    iget v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 368
    iget v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return v0
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    .line 83
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_8

    if-ge v2, v1, :cond_1

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v2, v1, :cond_2

    .line 95
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 96
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v6

    .line 97
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-ne v7, v8, :cond_3

    .line 99
    iput-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 103
    :cond_3
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 104
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_4

    cmpl-float v9, v10, v11

    if-lez v9, :cond_5

    :cond_4
    move v3, v8

    .line 109
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_7

    if-lez v7, :cond_7

    .line 110
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 111
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 112
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 116
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v9, v10

    .line 117
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v0

    add-float/2addr v4, v10

    .line 118
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v0

    sub-float/2addr v8, v10

    .line 119
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    add-float/2addr v5, v10

    if-eqz v6, :cond_6

    .line 123
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    .line 124
    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v11, v10

    .line 125
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 126
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v6

    sub-float v12, v10, v7

    .line 128
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v7

    .line 129
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v7, v6, v11

    .line 130
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v6, v11

    .line 131
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 135
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 136
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 135
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 139
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    if-eqz v3, :cond_9

    .line 144
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 145
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 146
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 194
    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v2, :cond_0

    .line 201
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_9

    .line 203
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 205
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 207
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v5, v5, 0x2bc

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v9, v11

    long-to-int v6, v9

    rem-int/2addr v6, v5

    .line 215
    div-int/lit16 v5, v6, 0x2bc

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    .line 219
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 220
    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    aget-object v11, v4, v11

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aput-boolean v8, v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    if-ge v5, v3, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    .line 229
    rem-int/lit16 v6, v6, 0x2bc

    int-to-float v6, v6

    const/high16 v9, 0x442f0000    # 700.0f

    div-float/2addr v6, v9

    add-int/lit8 v9, v5, -0x1

    .line 233
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 234
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 235
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 237
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 239
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    sub-float/2addr v11, v10

    mul-float/2addr v11, v6

    .line 241
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    sub-float/2addr v5, v9

    mul-float/2addr v6, v5

    add-float/2addr v10, v11

    .line 242
    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    add-float/2addr v9, v6

    .line 243
    iput v9, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 246
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 249
    :cond_4
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 250
    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v9

    .line 253
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v9, 0x80

    .line 255
    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 258
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 262
    iget-boolean v10, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v10, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_7

    .line 264
    iget-boolean v11, v0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    .line 265
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/keyguard/R$color;->theme_pattern_line_color_black:I

    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 267
    :cond_6
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/keyguard/R$color;->theme_pattern_line_color:I

    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    :goto_3
    if-eqz v10, :cond_d

    const/4 v10, 0x0

    move v11, v10

    move v13, v11

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v10, v3, :cond_b

    .line 276
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 281
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v15

    aget-object v15, v4, v15

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v16

    aget-boolean v15, v15, v16

    if-nez v15, :cond_8

    goto :goto_6

    .line 286
    :cond_8
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 287
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    if-eqz v10, :cond_a

    .line 289
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v17

    aget-object v7, v7, v17

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v14

    aget-object v7, v7, v14

    .line 290
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 291
    invoke-virtual {v9, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 292
    iget v11, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v13, 0x1

    invoke-static {v11, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_9

    iget v11, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-static {v11, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_9

    .line 294
    iget v11, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v9, v11, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    .line 296
    :cond_9
    invoke-virtual {v9, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    :goto_5
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    move v11, v15

    move v12, v8

    goto :goto_4

    .line 305
    :cond_b
    :goto_6
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_d

    :cond_c
    if-eqz v12, :cond_d

    .line 307
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 308
    invoke-virtual {v9, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 309
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    :cond_d
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    .line 317
    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    const/4 v7, 0x0

    :goto_7
    const/4 v8, 0x3

    if-ge v7, v8, :cond_f

    int-to-float v9, v2

    int-to-float v10, v7

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_e

    int-to-float v11, v3

    int-to-float v12, v10

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    float-to-int v11, v11

    float-to-int v12, v9

    .line 323
    aget-object v13, v4, v7

    aget-boolean v13, v13, v10

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/keyguard/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    return-void
.end method

.method public updateViewStyle(I)V
    .locals 3

    const-string v0, "background"

    .line 330
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/android/keyguard/SecLockPatternView;->loadDecoPatternResources(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    .line 335
    iget-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-eqz p1, :cond_1

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 337
    iput-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 341
    invoke-super {p0, v0}, Lcom/android/internal/widget/LockPatternView;->updateViewStyle(Z)V

    :goto_1
    return-void
.end method

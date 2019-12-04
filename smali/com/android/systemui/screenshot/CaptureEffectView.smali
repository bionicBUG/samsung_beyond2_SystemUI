.class public Lcom/android/systemui/screenshot/CaptureEffectView;
.super Landroid/view/View;
.source "CaptureEffectView.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mEffectWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRoundRectX:F

.field private mRountRectY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-class p1, Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->TAG:Ljava/lang/String;

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->updatePath(II)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEffectParams(III)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    int-to-float p1, p2

    .line 49
    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRoundRectX:F

    int-to-float p1, p3

    .line 50
    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRountRectY:F

    return-void
.end method

.method public updatePath(II)V
    .locals 3

    .line 54
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mEffectWidth:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 58
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 59
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRoundRectX:F

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mRountRectY:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPath:Landroid/graphics/Path;

    sget-object p1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

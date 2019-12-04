.class public Lcom/android/systemui/qs/QSIntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "QSIntervalSeekBar.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# instance fields
.field private activeColrFilter:Landroid/graphics/ColorFilter;

.field private mIntervalPaint:Landroid/graphics/Paint;

.field private mIntervalRect:Landroid/graphics/Rect;

.field private normalColrFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSIntervalSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    sget v0, Lcom/android/systemui/R$dimen;->qs_interval_seekbar_interval_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    sget v1, Lcom/android/systemui/R$dimen;->qs_interval_seekbar_interval_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->updateResources()V

    return-void
.end method

.method private updateResources()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_interval_seekbar_activated:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->qs_interval_seekbar_normal:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 111
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    .line 112
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 72
    iget v2, p0, Landroid/widget/SeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SeekBar;->mPaddingTop:I

    add-int/2addr v1, v2

    .line 74
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    .line 76
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/widget/SeekBar;->mPaddingRight:I

    sub-int v2, v0, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SeekBar;->mPaddingLeft:I

    .line 78
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    const/16 v4, 0xff

    const/16 v5, 0x42

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 87
    iget v2, p0, Landroid/widget/SeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/SeekBar;->mPaddingRight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 88
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    const/4 v6, 0x0

    .line 91
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    if-ge v3, v2, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    :goto_3
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_4
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->updateResources()V

    return-void
.end method

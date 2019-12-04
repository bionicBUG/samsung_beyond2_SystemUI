.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorGardenMaxWidthFrameLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;


# instance fields
.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    return-void
.end method


# virtual methods
.method public getGardenWidth()I
    .locals 2

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :catchall_0
    move-exception v0

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isGardenVisible()Z
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 55
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setGardenMaxWidth(I)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    if-ne v0, p1, :cond_0

    return-void

    .line 48
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthFrameLayout;->mMaxWidth:I

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

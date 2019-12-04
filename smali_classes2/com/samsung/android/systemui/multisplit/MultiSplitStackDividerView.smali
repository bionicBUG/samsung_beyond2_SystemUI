.class public Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;
.super Landroid/widget/FrameLayout;
.source "MultiSplitStackDividerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 39
    :goto_0
    sget v0, Lcom/samsung/android/internal/policy/MultiSplitModeUtils;->MULTI_SPLIT_STACK_DIVIDER_INSET:I

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, v2, v0, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method updateDividerColor(Z)V
    .locals 1

    .line 48
    sget v0, Lcom/android/systemui/R$id;->multi_split_stack_divider_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 51
    sget p1, Lcom/android/systemui/R$color;->multiwindow_divider_guideview_handler_background_color:I

    goto :goto_0

    .line 52
    :cond_0
    sget p1, Lcom/android/systemui/R$color;->docked_divider_background:I

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

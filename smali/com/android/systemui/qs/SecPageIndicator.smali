.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Landroid/widget/LinearLayout;
.source "SecPageIndicator.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

.field private mDotDefaultColor:I

.field private mDotTintColor:I

.field private mNumpages:I

.field private final mPageIndicatorContainerHeight:I

.field private final mPageIndicatorContainerWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private mQsExpansion:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    .line 43
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 44
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotDefaultColor:I

    .line 45
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotTintColor:I

    .line 51
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    .line 53
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    .line 55
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_page_indicator_container_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    .line 57
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_page_indicator_container_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecPageIndicator;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    return p0
.end method

.method private animate(II)V
    .locals 1

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 202
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    .line 203
    check-cast p2, Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playAnimation(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 209
    instance-of p1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p1, :cond_1

    const/16 p1, 0x96

    if-eqz p2, :cond_0

    .line 211
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 213
    :cond_0
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private reset(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 183
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, p1, :cond_0

    .line 188
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 190
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method private setPosition(I)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->animate(II)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 179
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method private setSecIndicatorColor(II)V
    .locals 5

    .line 71
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotDefaultColor:I

    .line 72
    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotTintColor:I

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    if-ge v1, v2, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    move p2, p1

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 145
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 147
    iget p5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    .line 148
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 147
    invoke-virtual {p3, p5, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 150
    iget p3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget p5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    .line 151
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 150
    invoke-virtual {p4, p3, p5}, Landroid/widget/ImageView;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 227
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    :cond_1
    int-to-float v0, v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    if-eqz p1, :cond_2

    .line 231
    iget v0, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PageIndicator:I

    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PageIndicatorTint:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->setSecIndicatorColor(II)V

    :cond_2
    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    return-void
.end method

.method public setLocation(F)V
    .locals 6

    float-to-int v0, p1

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 163
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    sub-int/2addr v0, v4

    sub-int p1, v0, p1

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    if-ne p1, v0, :cond_1

    return-void

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 87
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    .line 91
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_3

    .line 96
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$drawable;->qs_page_indicator_unselected:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$drawable;->qs_page_indicator_selected:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 102
    const-class v5, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v5}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget v5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotDefaultColor:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 104
    aget-object v6, v4, v1

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    aget-object v5, v4, v0

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mDotTintColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    :cond_2
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 117
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 120
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 122
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 123
    new-instance v5, Lcom/android/systemui/qs/SecPageIndicator$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/qs/SecPageIndicator$1;-><init>(Lcom/android/systemui/qs/SecPageIndicator;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 135
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setSecPageIndicatorCallback(Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    return-void
.end method

.class public Lcom/android/systemui/appdock/view/AppDockSideView;
.super Landroid/widget/FrameLayout;
.source "AppDockSideView.java"


# instance fields
.field private mExpandUI:Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

.field private mFooterUI:Lcom/android/systemui/appdock/view/AppDockFooterUIView;

.field private mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

.field private mLoadingView:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 141
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 143
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 146
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v3, Lcom/android/systemui/R$dimen;->appdock_side_margin_top:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v4, Lcom/android/systemui/R$dimen;->appdock_side_margin_bottom:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v2

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v5, Lcom/android/systemui/R$dimen;->appdock_side_margin_left_right:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v3

    .line 149
    sget-object v4, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    invoke-static {p0, v4, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 150
    sget-object v4, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 151
    sget-object v4, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    invoke-static {p0, v4, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 152
    sget-object v4, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "inset=%s, topMargin=%d, bottomMargin=%d, rightMargin=%d, size=[%d, %d]"

    .line 153
    invoke-static {p0, v4}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateLayoutState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mExpandUI:Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->show()V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockListUIView;->hide()V

    .line 72
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mFooterUI:Lcom/android/systemui/appdock/view/AppDockFooterUIView;

    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EXPANDED:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    const-string p0, "132"

    .line 75
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    const-string p1, "1072"

    .line 76
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v2, Lcom/android/systemui/R$dimen;->appdock_list_type_width:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockListUIView;->show()V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mExpandUI:Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->hide()V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mFooterUI:Lcom/android/systemui/appdock/view/AppDockFooterUIView;

    sget-object p1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_LIST:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockFooterUIView;->updateViewByState(Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;)V

    const-string p0, "131"

    .line 86
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    const-string p1, "1074"

    .line 87
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public animateMinimize(Z)V
    .locals 6

    .line 117
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    .line 120
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    aput v2, v3, p1

    .line 121
    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v4, p1

    .line 120
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 122
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 123
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 127
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getProgressView()Landroid/widget/ProgressBar;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mLoadingView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    iget-boolean v1, p1, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;->toExpand:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toExpand=%b"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-boolean p1, p1, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;->toExpand:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockSideView;->updateLayoutState(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockSideView;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 44
    sget v0, Lcom/android/systemui/R$id;->appdock_list_ui:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockListUIView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->appdock_expaned_ui:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mExpandUI:Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->appdock_loading_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mLoadingView:Landroid/widget/ProgressBar;

    .line 47
    sget v0, Lcom/android/systemui/R$id;->appdock_footer_ui:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockFooterUIView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mFooterUI:Lcom/android/systemui/appdock/view/AppDockFooterUIView;

    .line 49
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSideView$u1U97Uy_7BuYpRgdkIvoT3M9dgY;->INSTANCE:Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSideView$u1U97Uy_7BuYpRgdkIvoT3M9dgY;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$color;->appdock_side_view_bg_blur:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockSideView;->updateLayoutState(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockListUIView;->hide()V

    .line 100
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mExpandUI:Lcom/android/systemui/appdock/view/AppDockExpandedUIView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockExpandedUIView;->hide()V

    return-void
.end method

.method public reload()V
    .locals 2

    .line 107
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSideView;->mListUI:Lcom/android/systemui/appdock/view/AppDockListUIView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getList(Z)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->bind(Ljava/util/List;)V

    return-void
.end method

.class public Lcom/android/systemui/appdock/view/AppDockGridContentView;
.super Landroid/widget/FrameLayout;
.source "AppDockGridContentView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;
    }
.end annotation


# instance fields
.field private mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

.field private mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

.field private mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object p1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-void
.end method

.method private animateStateChange(Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->animateToggle(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->animateToggle(Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private animateToggle(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    const/4 p0, 0x0

    .line 80
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    .line 81
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateDisableState()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    sget-object v1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->getViewPager()Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "viewPager scroll to %d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->getViewPager()Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    .line 112
    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->getViewPager()Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getCurrentItem()I

    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->setCurrentItem(I)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->updatePageChildrenDisableState()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->updateChildrenDisableState()V

    :goto_0
    return-void
.end method

.method private updateState(Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "state=%s"

    .line 63
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->animateStateChange(Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;)V

    return-void
.end method


# virtual methods
.method public findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    sget-object v1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->getViewPager()Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "viewPager scroll to %d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    move-result-object p0

    return-object p0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockItemGridView;->findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 95
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->unbind()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    iget-object p1, p1, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AppDockEditStateChangeEvent : EditAction=%s"

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->updateDisableState()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 43
    sget v0, Lcom/android/systemui/R$id;->appdock_grid_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    .line 44
    sget v0, Lcom/android/systemui/R$id;->appdock_search_result:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v3, "word=%s"

    .line 48
    invoke-static {v3, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->updateState(Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridContentState:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    sget-object v1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    if-ne v0, v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->update(Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->unbind()V

    goto :goto_2

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mSearchResultView:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->reset()V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridContentView;->mGridViewPagerWrapper:Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getGridAppList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->bind(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public show()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 88
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    const-string v0, ""

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->setWord(Ljava/lang/String;)V

    return-void
.end method

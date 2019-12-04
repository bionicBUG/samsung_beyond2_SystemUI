.class public Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;
.super Landroid/widget/LinearLayout;
.source "AppDockGridViewPagerWrapper.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/BindingModelInterface;


# instance fields
.field private mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->bind(Ljava/util/List;)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;
    .locals 2

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/view/AppDockItemGridView;

    .line 54
    invoke-virtual {v1, p1}, Lcom/android/systemui/appdock/view/AppDockItemGridView;->findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewPager()Lcom/android/systemui/appdock/view/AppDockGridViewPager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 26
    sget v0, Lcom/android/systemui/R$id;->appdock_applist_grid_viewpager:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    return-void
.end method

.method public unbind()V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->unbind()V

    return-void
.end method

.method public updatePageChildrenDisableState()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mRealViewPager.getChildCount()=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPagerWrapper;->mRealViewPager:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockItemGridView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->updateChildrenDisableState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

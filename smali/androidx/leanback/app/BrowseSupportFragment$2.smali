.class Landroidx/leanback/app/BrowseSupportFragment$2;
.super Landroidx/leanback/widget/PresenterSelector;
.source "BrowseSupportFragment.java"


# instance fields
.field final synthetic val$adapterPresenter:Landroidx/leanback/widget/PresenterSelector;

.field final synthetic val$allPresenters:[Landroidx/leanback/widget/Presenter;

.field final synthetic val$invisibleRowPresenter:Landroidx/leanback/widget/Presenter;


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 1

    .line 823
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/Row;

    .line 824
    invoke-virtual {v0}, Landroidx/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$2;->val$adapterPresenter:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object p0

    return-object p0

    .line 827
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$2;->val$invisibleRowPresenter:Landroidx/leanback/widget/Presenter;

    return-object p0
.end method

.method public getPresenters()[Landroidx/leanback/widget/Presenter;
    .locals 0

    .line 833
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$2;->val$allPresenters:[Landroidx/leanback/widget/Presenter;

    return-object p0
.end method

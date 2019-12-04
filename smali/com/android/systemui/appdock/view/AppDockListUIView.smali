.class public Lcom/android/systemui/appdock/view/AppDockListUIView;
.super Lcom/android/systemui/appdock/view/AppDockBaseItemListView;
.source "AppDockListUIView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 26
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public bridge synthetic getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockListUIView;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public getRVType()I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public hide()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockListUIView;->reset()V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->unbind()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 32
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_list_ui_margin_top:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 33
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_list_ui_margin_bottom:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockListUIView;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getList(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->bind(Ljava/util/List;)V

    return-void
.end method

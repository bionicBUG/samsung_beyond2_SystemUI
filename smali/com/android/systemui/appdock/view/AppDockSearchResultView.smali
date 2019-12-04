.class public Lcom/android/systemui/appdock/view/AppDockSearchResultView;
.super Lcom/android/systemui/appdock/view/AppDockItemGridView;
.source "AppDockSearchResultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;
    }
.end annotation


# instance fields
.field private mUpdateSearchAction:Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

.field private mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockItemGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchResultView;Lcom/android/systemui/appdock/view/AppDockSearchResultView$1;)V

    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mUpdateSearchAction:Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

    const-string p2, ""

    .line 43
    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/android/systemui/appdock/model/BixbySearchPrediction;->supportBixbySearch(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    const-string p1, "mIsSupportBixby=%b"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/appdock/view/AppDockSearchResultView;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->getSearchResultList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSearchResultList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/BixbySearchPrediction;->supportBixbySearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/model/BixbySearchPrediction;->getApplicationPredictions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string/jumbo p1, "word=%s, filteredList size=%d"

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getGridAppList()Ljava/util/List;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 71
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    if-eqz p1, :cond_1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->setContrastWord(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 59
    invoke-static {}, Lcom/android/systemui/appdock/model/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mUpdateSearchAction:Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mWord:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/android/systemui/appdock/model/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mUpdateSearchAction:Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    invoke-static {}, Lcom/android/systemui/appdock/model/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->mUpdateSearchAction:Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateChildrenDisableState()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    .line 95
    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateDisableState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mLastQuery:Ljava/lang/String;

.field mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field mTileSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field

.field mTileSearchables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SystemUIIndexMediator"

    .line 29
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    .line 44
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setTileHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isInQuickQsPanel(Ljava/lang/String;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 12

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mLastQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/indexsearch/Searchable;

    .line 65
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    iget-object v3, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_3
    new-instance v1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {v1, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->setTotalCount(I)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search result totalCount : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIIndexMediator"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/indexsearch/Searchable;

    .line 82
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v10, :cond_4

    if-nez v5, :cond_5

    goto :goto_1

    .line 86
    :cond_5
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getSearchDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 88
    invoke-interface {v2}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v4, "tileSpec"

    .line 91
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v11, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    new-instance v9, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    invoke-direct {v9, v3}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;-><init>(Landroid/content/Intent;)V

    const-string v4, "content://com.android.systemui.indexsearch"

    move-object v3, v11

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V

    .line 94
    invoke-virtual {v1, v11}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->addResultItem(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)V

    const/4 v3, 0x1

    .line 96
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search result title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public setInstantTileListening(ZLjava/lang/String;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setInstantTileListening(ZLjava/lang/String;)V

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setTileHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setTileSearchables(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

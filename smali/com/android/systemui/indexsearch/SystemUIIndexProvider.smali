.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

.field mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;-><init>()V

    const-string v0, "SystemUIIndexProvider"

    .line 19
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 73
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-object p3

    .line 77
    :cond_0
    new-instance p2, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-direct {p2, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    iput-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-object p3
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 46
    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 47
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mAsycTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 p0, 0x1

    return p0
.end method

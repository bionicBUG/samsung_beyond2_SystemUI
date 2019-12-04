.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 1

    const/4 v0, 0x0

    .line 35
    aget-object p1, p1, v0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPreExecute()V
    .locals 1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-void
.end method

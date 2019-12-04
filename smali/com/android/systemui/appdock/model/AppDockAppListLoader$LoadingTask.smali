.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;
.super Landroid/os/AsyncTask;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter p1

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 166
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 167
    new-instance v2, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$tj6q2rBe0hnPyZVdADZ_V2xy4_s;

    invoke-direct {v2, p0}, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$tj6q2rBe0hnPyZVdADZ_V2xy4_s;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;)V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 186
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 187
    new-instance v5, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v5, v4}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 188
    iget-object v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v5, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 189
    :goto_1
    iput-object v4, v5, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mTitle:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v4

    .line 191
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v6, v5}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v6, v6, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v6, v6, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v3, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 199
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v5, v5, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v2

    sub-long/2addr v3, v0

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "mAppInfoList - size=%d, time=%d"

    .line 202
    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    return-object p0

    :catchall_1
    move-exception p0

    .line 199
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 165
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public synthetic lambda$doInBackground$0$AppDockAppListLoader$LoadingTask(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$200(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 176
    :cond_1
    sget-object p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLocalBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-boolean v0, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mUpdateBlackListPostLoading:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter p1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 224
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    goto :goto_0

    .line 226
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mUpdateBlackListPostLoading:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 226
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 231
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOAD_COMPLETE:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$100(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V

    .line 232
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;

    .line 234
    invoke-interface {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPostExecute()V

    goto :goto_2

    .line 237
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    sget-object v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOADING:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$100(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;

    .line 213
    invoke-interface {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPreExecute()V

    goto :goto_0

    :cond_0
    return-void
.end method

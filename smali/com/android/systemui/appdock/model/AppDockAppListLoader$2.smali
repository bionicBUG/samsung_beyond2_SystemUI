.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;
.super Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeModeChangedFromBlackList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v1, v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 288
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 291
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "mBlackListMap size=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$5;->$SwitchMap$com$android$systemui$appdock$model$AppDockAppListLoader$State:[I

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getState()Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto :goto_2

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p1, p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 302
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    goto :goto_1

    .line 304
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 296
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iput-boolean p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mUpdateBlackListPostLoading:Z

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    .line 291
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

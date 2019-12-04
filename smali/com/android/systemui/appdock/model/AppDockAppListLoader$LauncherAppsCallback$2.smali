.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->onPackageChangedCommon(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iput-object p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->access$600(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->val$userId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->access$800(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object v1, v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v1, v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;

    invoke-direct {v0}, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->sendOntoMainThread(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 587
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

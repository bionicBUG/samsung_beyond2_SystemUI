.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherAppsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;


# direct methods
.method private constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;)V
    .locals 0

    .line 549
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z
    .locals 0

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->removePackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z
    .locals 0

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->addPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private addPackage(Ljava/lang/String;I)Z
    .locals 6

    .line 630
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 632
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 633
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 634
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 635
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 636
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    .line 637
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 638
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v4

    :cond_0
    if-ne v4, p2, :cond_2

    .line 640
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-virtual {v4, v2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 641
    invoke-static {v4, v5}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$200(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 642
    new-instance v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v1, v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 643
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget v4, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 644
    :goto_1
    iput-object v2, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mTitle:Ljava/lang/String;

    .line 645
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 646
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v3, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    .line 647
    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v3, v3, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v3, v3, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method private removePackage(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "packageName=%s"

    .line 658
    invoke-static {v3, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v1, v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v3, v3, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 662
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 663
    iget v5, v4, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    if-ne v5, p2, :cond_0

    iget-object v5, v4, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 664
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 666
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-virtual {v4}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$900(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Ljava/lang/String;)V

    move v2, v0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 671
    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 552
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 553
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "packageName=%s, userId=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->onPackageChangedCommon(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 573
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 574
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "packageName=%s, userId=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->onPackageChangedCommon(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageChangedCommon(Ljava/lang/String;I)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$700(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$2;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 559
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 560
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "packageName=%s, userId=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$700(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 596
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    .line 597
    iget-object p3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {p3}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$700(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$3;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;[Ljava/lang/String;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 614
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    .line 615
    iget-object p3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {p3}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$700(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;[Ljava/lang/String;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

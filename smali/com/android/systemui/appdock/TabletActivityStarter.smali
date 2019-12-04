.class public Lcom/android/systemui/appdock/TabletActivityStarter;
.super Ljava/lang/Object;
.source "TabletActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/appdock/ActivityStarterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getActivityLaunchOptions(I)Landroid/app/ActivityOptions;
    .locals 6

    .line 69
    new-instance v1, Lcom/android/systemui/appdock/TabletActivityStarter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/TabletActivityStarter$1;-><init>(Lcom/android/systemui/appdock/TabletActivityStarter;)V

    .line 81
    new-instance p0, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJ)V

    const/16 v0, 0x7dd

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->setRequestedWindowType(I)V

    .line 84
    invoke-static {p0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getStartingWindowingModeFromClickEvent(Landroid/content/Context;)I
    .locals 4

    .line 42
    new-instance p0, Lcom/android/systemui/dnd/StackVisibility;

    invoke-direct {p0}, Lcom/android/systemui/dnd/StackVisibility;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/dnd/StackVisibility;->init(Landroid/content/Context;)Lcom/android/systemui/dnd/StackVisibility;

    move-result-object p0

    .line 43
    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getVisibleFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isHomeVisible()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isPrimaryVisible()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 48
    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    .line 49
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 50
    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object p0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getActvityLabel(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object p0

    .line 52
    sget v0, Lcom/android/systemui/R$string;->appdock_fullscreen_app_not_resizeable:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "return windowingMode=%d"

    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public startApp(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "info=%s"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/appdock/ActivityStarterInterface;->saLogging(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p1}, Lcom/android/systemui/appdock/ActivityStarterInterface;->makeItemInfoIntent(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Landroid/content/Intent;

    move-result-object p4

    .line 35
    invoke-virtual {p0, p3}, Lcom/android/systemui/appdock/TabletActivityStarter;->getActivityLaunchOptions(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 34
    invoke-virtual {p2, p4, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

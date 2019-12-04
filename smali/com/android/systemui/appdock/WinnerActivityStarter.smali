.class public Lcom/android/systemui/appdock/WinnerActivityStarter;
.super Ljava/lang/Object;
.source "WinnerActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/appdock/ActivityStarterInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getActivityOptions(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 64
    sget p0, Lcom/android/systemui/R$anim;->sidescreen_applist_transition_fade_in:I

    sget v0, Lcom/android/systemui/R$anim;->sidescreen_applist_transition_fade_out:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    .line 64
    invoke-static {p1, p0, v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 70
    invoke-virtual {p0, p2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->setAvoidMoveHomeToFrontFromRecent()V

    :cond_0
    return-object p0
.end method

.method public getStartingWindowingModeFromClickEvent(Landroid/content/Context;)I
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p1

    const-string v0, "return windowingMode=%d"

    invoke-static {v0, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public startApp(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V
    .locals 3

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    if-nez p3, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->isSidescreenPrimaryVisible()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x65

    goto :goto_0

    :cond_0
    const/16 p3, 0x64

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 32
    iget-object v2, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    .line 33
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "componentName=%s, targetWindowingMode=%d"

    .line 32
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/appdock/ActivityStarterInterface;->saLogging(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/appdock/WinnerActivityStarter;->getActivityOptions(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object p3

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p1}, Lcom/android/systemui/appdock/ActivityStarterInterface;->makeItemInfoIntent(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Landroid/content/Intent;

    move-result-object p0

    .line 38
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    iget p1, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 37
    invoke-virtual {p2, p0, p3, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

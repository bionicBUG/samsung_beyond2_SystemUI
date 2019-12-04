.class public Lcom/android/systemui/appdock/utils/AppDockSystemProxy;
.super Ljava/lang/Object;
.source "AppDockSystemProxy.java"


# static fields
.field private static sInstance:Lcom/android/systemui/appdock/utils/AppDockSystemProxy;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIwm:Landroid/view/IWindowManager;

.field mLauncherApps:Landroid/content/pm/LauncherApps;

.field mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field mMwmWrapper:Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mUm:Landroid/os/UserManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "activity"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mAm:Landroid/app/ActivityManager;

    .line 65
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v0, "window"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mWm:Landroid/view/WindowManager;

    .line 69
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIwm:Landroid/view/IWindowManager;

    .line 70
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 71
    invoke-static {}, Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mMwmWrapper:Lcom/android/systemui/shared/system/MultiWindowManagerWrapper;

    .line 73
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mUm:Landroid/os/UserManager;

    const-string v0, "persona"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string v0, "launcherapps"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->sInstance:Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->sInstance:Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    .line 43
    :cond_0
    sget-object p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->sInstance:Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    return-object p0
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getActvityLabel(Landroid/content/ComponentName;I)Ljava/lang/String;
    .locals 2

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v1, 0x80

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getKioskId()I
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getLauncherPacakges(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherPacakges(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getKioskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 193
    new-instance p1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getKioskId()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 197
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq p1, v5, :cond_2

    if-nez p2, :cond_2

    .line 199
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exclude secure folder user, id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 209
    iget-object v2, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    .line 210
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 209
    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIwm:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStackTopTaskId(II)I
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    const/4 p0, -0x1

    return p0
.end method

.method public getTaskSnapshotForcely(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 98
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isScreenPinningActive()Z
    .locals 2

    const/4 v0, 0x0

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isSidescreenPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 89
    iget-boolean p0, p0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    return p0

    :cond_0
    return v0
.end method

.method public registerLauncherCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void
.end method

.method public registerResizeModeChangedFromBlackListListener(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)V
    .locals 0

    return-void
.end method

.method public startActivityFromRecents(II)Z
    .locals 1

    .line 155
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 p2, 0x1

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    new-array p1, p2, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "e=%s"

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

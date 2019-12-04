.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mImpl:Lcom/android/systemui/recents/RecentsImplementation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private createRecentsImplementationFromConfig()Lcom/android/systemui/recents/RecentsImplementation;
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->config_recentsComponent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/RecentsImplementation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating recents component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading recents component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    const-string v1, "No recents component configured"

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private isUserSetup()Z
    .locals 2

    .line 161
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    .line 162
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_setup_complete"

    .line 163
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public appTransitionFinished(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->onAppTransitionFinished()V

    :cond_0
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->cancelPreloadRecentApps()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p2}, Lcom/android/systemui/recents/RecentsImplementation;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public growRecents()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->growRecents()V

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImplementation;->hideRecentApps(ZZ)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {v0}, Lcom/android/systemui/recents/RecentsImplementation;->onBootCompleted()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "TaskLockPreference"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/tasklockutil/FOTAUtils;->transferTaskLockPrefMtoN(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/tasklockutil/FOTAUtils;->transferTaskLockPrefNtoO(Landroid/content/Context;)V

    .line 64
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->updateDefaultTaskLockIfNeeded()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/RecentsImplementation;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public preloadRecentApps()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->preloadRecentApps()V

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/RecentsImplementation;->showRecentApps(Z)V

    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImplementation;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 2

    .line 48
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 49
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->createRecentsImplementationFromConfig()Lcom/android/systemui/recents/RecentsImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/recents/RecentsImplementation;->onStart(Landroid/content/Context;Lcom/android/systemui/SysUiServiceProvider;)V

    return-void
.end method

.method public toggleRecentApps()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    sget-boolean v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 116
    sput-boolean p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    return-void

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->toggleRecentApps()V

    return-void
.end method

.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# static fields
.field private static final QUERY_ALL:I = 0x1

.field private static final QUERY_PKG:I = 0x2

.field private static final REMOVE_PKG:I = 0x3

.field private static final UPDATE_PKG:I = 0x5


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 284
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/samsung/systemui/splugins/SVersionInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;",
            "Lcom/samsung/systemui/splugins/SVersionInfo;",
            ")",
            "Lcom/samsung/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 462
    new-instance p0, Lcom/samsung/systemui/splugins/SVersionInfo;

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SVersionInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SVersionInfo;->hasVersionInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p3, p0}, Lcom/samsung/systemui/splugins/SVersionInfo;->checkVersion(Lcom/samsung/systemui/splugins/SVersionInfo;)V

    return-object p0

    .line 466
    :cond_0
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result p0

    .line 467
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/SVersionInfo;->getDefaultVersion()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 468
    :cond_1
    new-instance p0, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;

    const/4 p1, 0x0

    const-string p2, "Invalid legacy version"

    invoke-direct {p0, p2, p1}, Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw p0
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 4

    .line 337
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1200(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1100(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple plugins found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginInstanceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1300(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->applyUrgentOSUpgradePolicy(Ljava/lang/String;)V

    .line 351
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 352
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    iget-object v1, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 357
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "PluginInstanceManager"

    .line 377
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1400(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1200(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1100(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v7, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1200(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 389
    :goto_0
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1200(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.systemui.permission.SPLUGIN"

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin doesn\'t have permission: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 396
    new-instance v5, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginContextWrapper;

    iget-object v6, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 397
    invoke-static {v6}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v1, 0x1

    .line 398
    invoke-static {v3, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/systemui/splugins/SPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/samsung/systemui/splugins/SVersionInfo;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object v6

    .line 406
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1300(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->onPluginLoaded(Ljava/lang/String;)V

    .line 408
    new-instance v8, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/samsung/systemui/splugins/SVersionInfo;)V
    :try_end_1
    .catch Lcom/samsung/systemui/splugins/SVersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    .line 451
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1300(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;->onPluginLoadFailed(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load plugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 290
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 330
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_8

    .line 322
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 323
    iget-object v2, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    iget-object v2, v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 325
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_1
    if-ltz p1, :cond_8

    .line 304
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 305
    iget-object v3, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    iget-object v3, v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 307
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 313
    :cond_4
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$1000(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 314
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_3

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_2
    if-ltz p1, :cond_7

    .line 295
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 296
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    iget-object v1, v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

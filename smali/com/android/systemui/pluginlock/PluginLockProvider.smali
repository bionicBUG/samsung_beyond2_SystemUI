.class public Lcom/android/systemui/pluginlock/PluginLockProvider;
.super Landroid/content/ContentProvider;
.source "PluginLockProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic lambda$call$0(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 0

    .line 47
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$call$1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 1

    const-string v0, "action"

    .line 42
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "arg"

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extras"

    .line 44
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call bundle:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "PluginLockProvider"

    invoke-static {p3, p1, p2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-interface {p4}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;-><init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$call$2(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1

    const-string v0, "get_dls_data"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p4}, Lcom/android/systemui/pluginlock/PluginLockManager;->getDynamicLockData()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dynamicLockData"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "get_notification_numbers"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    const-string/jumbo p3, "top"

    .line 37
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "bottom"

    .line 38
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 39
    invoke-virtual {p4, p3, p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getNotificationNumbers(II)I

    move-result p0

    const-string p2, "max_notification_numbers"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/pluginlock/PluginLockManager;->getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 31
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

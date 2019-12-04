.class public Lcom/samsung/systemui/splugins/SPluginPrefs;
.super Ljava/lang/Object;
.source "SPluginPrefs.java"


# static fields
.field private static final HAS_PLUGINS:Ljava/lang/String; = "plugins"

.field private static final PLUGIN_ACTIONS:Ljava/lang/String; = "actions"

.field private static final PREFIX_UNCAUGHT_EXCEPTION_COUNT:Ljava/lang/String; = "ExceptionCount"

.field private static final PREFIX_UNCAUGHT_EXCEPTION_FIRST_TIME:Ljava/lang/String; = "FirstExceptionTime"

.field private static final PREFS:Ljava/lang/String; = "splugin_prefs"


# instance fields
.field private final mPluginActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "splugin_prefs"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 44
    new-instance p1, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mPluginActions:Ljava/util/Set;

    return-void
.end method

.method public static getFirstUncaughtExceptionTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "splugin_prefs"

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "FirstExceptionTime"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUncaughtExceptionCount(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "splugin_prefs"

    .line 66
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "ExceptionCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hasPlugins(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "splugin_prefs"

    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "plugins"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setFirstUncaughtExceptionTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "splugin_prefs"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "FirstExceptionTime"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setHasPlugins(Landroid/content/Context;)V
    .locals 2

    const-string v0, "splugin_prefs"

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "plugins"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUncaughtExceptionCount(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "splugin_prefs"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ExceptionCount"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addAction(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mPluginActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "actions"

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mPluginActions:Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPluginList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginPrefs;->mPluginActions:Ljava/util/Set;

    return-object p0
.end method

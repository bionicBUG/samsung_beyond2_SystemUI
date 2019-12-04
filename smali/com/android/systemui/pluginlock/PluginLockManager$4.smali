.class Lcom/android/systemui/pluginlock/PluginLockManager$4;
.super Ljava/lang/Object;
.source "PluginLockManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$4;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$4;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    if-eqz p1, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$4;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isRecoverRequiredWallpaper()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1409
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$4;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockClock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->recover()V

    :cond_0
    return-void
.end method

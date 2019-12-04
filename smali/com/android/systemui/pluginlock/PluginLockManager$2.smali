.class Lcom/android/systemui/pluginlock/PluginLockManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PluginLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockManager;
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

    .line 163
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUserSwitchComplete$0$PluginLockManager$2()V
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$500(Lcom/android/systemui/pluginlock/PluginLockManager;Z)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$200(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->onStartedGoingToSleep()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$100(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete(), userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$400(Lcom/android/systemui/pluginlock/PluginLockManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$400(Lcom/android/systemui/pluginlock/PluginLockManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$2$eSzAGHmJGWYnki0SLlrT5Hj8zUw;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$2$eSzAGHmJGWYnki0SLlrT5Hj8zUw;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager$2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$402(Lcom/android/systemui/pluginlock/PluginLockManager;I)I

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitching(), userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_0
    return-void
.end method

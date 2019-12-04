.class public Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlimIndicatorReceiver.java"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field private mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    return-void
.end method


# virtual methods
.method public isRegisteredReceiver()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "iconblacklist"

    .line 47
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->setBlackListDBValue(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    const-string p1, "rotate,headset"

    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->setBlackListDBValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 7

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 58
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const-string v5, "com.samsung.systemui.permission.SPLUGIN"

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mIsRegistered:Z

    return-void
.end method

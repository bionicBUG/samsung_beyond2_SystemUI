.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationInterruptionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SoundModeTileVolumeBar$NotificationInterruptionReceiver()V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateBarViews()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    new-instance p2, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$NotificationInterruptionReceiver$FmUxuYp4Ev8YYDpBRX84gjOo8ow;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$NotificationInterruptionReceiver$FmUxuYp4Ev8YYDpBRX84gjOo8ow;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SoundModeTileVolumeBar"

    const-string v1, "There is no NotificationInterruptionReceiver"

    .line 459
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

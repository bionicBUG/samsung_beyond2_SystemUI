.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$SoundModeTileVolumeMixer$2()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$402(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$2$5htQykwCho3uoGXjwdHHNlsV5o4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$2$5htQykwCho3uoGXjwdHHNlsV5o4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

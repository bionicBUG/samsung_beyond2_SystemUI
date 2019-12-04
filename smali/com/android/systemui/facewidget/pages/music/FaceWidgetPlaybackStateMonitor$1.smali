.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitchComplete() userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$200(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$300(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

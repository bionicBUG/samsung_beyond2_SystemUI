.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "FaceWidgetPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserveSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;)V
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ob]onMetadataChanged() metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateSessions()V

    :cond_0
    return-void
.end method

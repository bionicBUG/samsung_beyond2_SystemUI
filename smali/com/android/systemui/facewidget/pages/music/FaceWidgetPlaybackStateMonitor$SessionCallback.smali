.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "FaceWidgetPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged() metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string v1, "onSessionDestroyed()"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getCurrentSessionPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.servicebox.mediasession.action.RESULT_LYRIC"

    .line 572
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    .line 573
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.servicebox.mediasession.extra.LYRIC"

    .line 574
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 575
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSessionEvent() ACTION_RESULT_LYRIC mediaId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isEmptyLyric = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.class Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;
.super Ljava/lang/Object;
.source "SoundModeTileSelectBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;->setRingerModeProfile(I)V

    .line 102
    :cond_0
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    iget p1, p1, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mRingerModeProfile:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->updateAllButtonViews(I)V

    .line 105
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton$1;->this$1:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    const-string v0, "4100"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

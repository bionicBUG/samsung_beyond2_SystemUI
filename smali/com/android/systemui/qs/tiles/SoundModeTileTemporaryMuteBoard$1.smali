.class Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;
.super Ljava/lang/Object;
.source "SoundModeTileTemporaryMuteBoard.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChanged(mode_ringer_time_on)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object p1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    return-void
.end method

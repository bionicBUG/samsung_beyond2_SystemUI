.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUserContextForSample()Landroid/content/Context;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public isEnableZenMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSettingAllSoundMute()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVoiceCalling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMuted(IZZ)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(ILandroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V
    .locals 0

    return-void
.end method

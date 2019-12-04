.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


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

    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$102(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v2

    if-eq v2, p2, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$202(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z

    move v0, v1

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    iget v1, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-interface {v2, v1, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onMuted(IZZ)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 p1, 0xd9c

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(IZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    iget v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onProgressChanged(ILandroid/widget/SeekBar;IZ)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 p1, 0xd9c

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V

    :cond_0
    return-void
.end method

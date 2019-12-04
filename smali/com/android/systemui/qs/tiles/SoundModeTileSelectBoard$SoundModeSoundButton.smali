.class Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;
.super Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;
.source "SoundModeTileSelectBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundModeSoundButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;Landroid/view/ViewGroup;I)V

    const-string p1, "Sound"

    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mSALoggingDetail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateViews(I)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->updateViews(I)V

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeSoundButton;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard;)Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$BoardToTileCallback;->getIsSystemSettingAllSoundOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mParent:Landroid/view/ViewGroup;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const-string p1, "SoundModeTile_SBoard"

    const-string v0, " all_sound_off is ON -> Sound Button Board of SoundModeTile of DetailView need to be disabled."

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailSecondaryText:I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileSelectBoard$SoundModeButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeSystemBar;
.super Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.source "SoundModeTileVolumeSystemBar.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SoundModeTileVolumeSystemBar"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeSystemBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeSystemBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method


# virtual methods
.method protected getIconType(II)I
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method protected getImageResourceId(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 90
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound:I

    return p0

    .line 88
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute:I

    return p0

    .line 85
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_system:I

    return p0
.end method

.method protected isIconActiveColor(II)Z
    .locals 0

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onAttachedToWindow()V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->volumepanel_system:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected sendSAVolumeBarLogging()V
    .locals 1

    const-string p0, "SoundModeTileVolumeSystemBar"

    const-string v0, "sendSAVolumeBarLogging() ScreenID:205 - 4104"

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4104"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

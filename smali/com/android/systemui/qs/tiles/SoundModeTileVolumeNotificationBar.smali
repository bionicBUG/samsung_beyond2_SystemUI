.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeNotificationBar;
.super Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.source "SoundModeTileVolumeNotificationBar.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SoundModeTileVolumeNotificationBar"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeNotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeNotificationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const/4 p1, 0x5

    .line 51
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method


# virtual methods
.method protected getIconType(II)I
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_0
    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    return p0
.end method

.method protected getImageResourceId(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 95
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti:I

    return p0

    .line 93
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute:I

    return p0

    .line 91
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate:I

    return p0

    .line 89
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti:I

    return p0
.end method

.method protected isIconActiveColor(II)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    return p0

    :cond_1
    return v0

    :cond_2
    if-lez p2, :cond_3

    move p0, v0

    :cond_3
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onAttachedToWindow()V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->volumepanel_notification:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected sendSAVolumeBarLogging()V
    .locals 1

    const-string p0, "SoundModeTileVolumeNotificationBar"

    const-string v0, "sendSAVolumeBarLogging() ScreenID:205 - 4103"

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4103"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

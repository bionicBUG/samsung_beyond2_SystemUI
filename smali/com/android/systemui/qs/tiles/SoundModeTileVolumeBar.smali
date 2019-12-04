.class public abstract Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.super Landroid/widget/LinearLayout;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLE:I = 0x66

.field private static final ALPHA_ENABLE:I = 0xff

.field protected static final DEBUG:Z = true

.field protected static final DEFAULT_VOLUME_URI_BIXBY:Ljava/lang/String; = "file:///system/media/audio/ui/Bixby_BOS.ogg"

.field protected static final DEFAULT_VOLUME_URI_MUSIC:Ljava/lang/String; = "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

.field protected static final ICONS_RES_TYPE_MUTE:I = 0x2

.field protected static final ICONS_RES_TYPE_SOUND:I = 0x0

.field protected static final ICONS_RES_TYPE_VIBRATE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "SoundModeTileVolumeBar"


# instance fields
.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

.field protected mContext:Landroid/content/Context;

.field protected mIconColorActive:I

.field protected mIconColorEarShort:I

.field protected mIconColorMute:I

.field protected mIconView:Landroid/widget/ImageView;

.field private mMuted:Z

.field public mSeekBar:Landroid/widget/SeekBar;

.field protected final mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field protected mStream:I

.field public mTitleView:Landroid/widget/TextView;

.field protected mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

.field protected mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

.field protected mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    .line 112
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    .line 139
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 155
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    const/4 p2, 0x0

    .line 403
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorActive:I

    .line 404
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorMute:I

    .line 405
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorEarShort:I

    .line 474
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    .line 199
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p1
.end method

.method private initResources()V
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-nez v0, :cond_1

    const-string v0, "No stream found, or Voice calling...... not binding volumizer"

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-nez v0, :cond_2

    .line 234
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    .line 235
    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->getCurrentUserContextForSample()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getDefaultVolumeUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->registerReceiver()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isSettingAllSoundMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 254
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    sget-object v2, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;->INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeBar$jF7JkF0Wl_PQZlF2TY-xhDgJjeM;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 268
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    return-void
.end method

.method static synthetic lambda$initResources$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 264
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result p0

    return p0
.end method

.method private requestAudioFocus()Z
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isVoiceCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isVoIP and isVoiceCall is true so can not request audioFocus"

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 298
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method


# virtual methods
.method protected getDefaultVolumeUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getIconType(II)I
    .locals 1

    const/4 p0, 0x2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method protected abstract getImageResourceId(I)I
.end method

.method protected handleUpdateBarViews()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getRingerMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getIconType(II)I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getImageResourceId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isEnableSeekBarForVolume()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_0

    :cond_1
    const/16 v2, 0x66

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 398
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isIconActiveColor(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorActive:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorMute:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 399
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method protected handleUpdateDualColorSeekbar()V
    .locals 0

    return-void
.end method

.method protected isEnableSeekBarForVolume()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isIconActiveColor(II)Z
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 213
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->initResources()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemActive:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 216
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0, p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->updateCommonColorDraw(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->unregisterReceiver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 204
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 205
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 514
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 516
    iget v0, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemActive:I

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorActive:I

    .line 517
    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailSecondaryText:I

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorMute:I

    .line 520
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorActive:I

    if-nez p1, :cond_2

    .line 521
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const v0, 0x1060386

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorActive:I

    .line 522
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const v0, 0x1060388

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorMute:I

    .line 524
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const v0, 0x1060387

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconColorEarShort:I

    return-void
.end method

.method protected printLog(Ljava/lang/String;)V
    .locals 0

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundModeTileVolumeBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract sendSAVolumeBarLogging()V
.end method

.method public setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-void
.end method

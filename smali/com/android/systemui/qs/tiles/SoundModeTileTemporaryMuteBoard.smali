.class public Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileTemporaryMuteBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SoundModeTileTemporaryMuteBoard"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

.field private mDivider:Landroid/view/View;

.field private mRemainingTime:Landroid/widget/TextView;

.field private mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mSummaryText:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "mode_ringer_time_on"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 64
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string p2, "mode_ringer_time_on"

    .line 62
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 64
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string p2, "mode_ringer_time_on"

    .line 62
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 64
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/media/AudioManager;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 12

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    const-string v1, "SoundModeTileTemporaryMuteBoard"

    if-gtz v0, :cond_0

    const-string p0, "AudioManager.getRemainingMuteIntervalMs() is wrong!!"

    .line 170
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0x36ee80

    .line 173
    div-int v3, v0, v2

    const v4, 0xea60

    .line 174
    div-int v5, v0, v4

    rem-int/lit8 v5, v5, 0x3c

    mul-int/2addr v2, v3

    int-to-long v6, v2

    mul-int/2addr v4, v5

    int-to-long v8, v4

    .line 180
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemainTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", refine(h/m)=("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "), str(h/m)=("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v3, :cond_1

    if-gtz v5, :cond_2

    :cond_1
    if-lez v3, :cond_4

    if-nez v5, :cond_4

    :cond_2
    const-string v6, "%s"

    if-nez v3, :cond_3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 186
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-nez v5, :cond_5

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 188
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    if-lez v5, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object v4, v3, v1

    const-string v2, "%s %s"

    .line 191
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, ""

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_mute_remaining:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateModelValues(Z)V
    .locals 3

    .line 154
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 155
    :cond_0
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setTempMuteSettingValue(I)V

    if-eqz p1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 160
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    const-string p1, "4108"

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    if-eqz p1, :cond_2

    .line 163
    new-instance p1, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BFHxriMW1ze0AZ_1LM6QgzPH41U;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BFHxriMW1ze0AZ_1LM6QgzPH41U;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private updateSummaryText()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_temporary_mute_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$SoundModeTileTemporaryMuteBoard(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSwitch.setOnCheckedChangeListener() mSwitch.isChecked()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateModelValues(Z)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$SoundModeTileTemporaryMuteBoard(Landroid/view/View;)V
    .locals 1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "this.setOnClickListener() mSwitch.isChecked()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateModelValues$2$SoundModeTileTemporaryMuteBoard()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;->refreshParentDetailView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    .line 109
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 110
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PageIndicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 116
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    sget v0, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    .line 89
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_temporary_mute_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v0, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->soundmode_temporary_mute_remainging_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/android/systemui/R$id;->soundmode_temporary_mute_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BamaSSSHCWXA7Y_nDBtcVzQIRXg;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BamaSSSHCWXA7Y_nDBtcVzQIRXg;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$SrkxBaFbQemOEut5U8YqfMmF6wU;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$SrkxBaFbQemOEut5U8YqfMmF6wU;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refreshAllView(I)V
    .locals 4

    .line 128
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAllView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") mode_ringer_time_on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateSummaryText()V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getRemainTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    return-void
.end method

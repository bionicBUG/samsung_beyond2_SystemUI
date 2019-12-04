.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;
    }
.end annotation


# static fields
.field private static final BIXBY_AUTHORITY:Ljava/lang/String; = "com.samsung.android.bixby.agent.settings"

.field private static final BIXBY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_VOICE_ENABLE_PATH:Ljava/lang/String; = "bixby_voice_isenable"

.field private static final BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field public static final STREAM_BIXBY_VOICE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SoundModeTileVolumeMixer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

.field private mNotificationInterruptionReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

.field private mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.log.seclevel"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    .line 62
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    .line 68
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    .line 75
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationInterruptionReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isVoiceCallingState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addVolumeBar(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_soundmode_volume_ringtone_bar:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_ringtone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_soundmode_volume_bixby_bar:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_bixby_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_soundmode_volume_notification_bar:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_soundmode_volume_media_bar:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_media:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_soundmode_volume_system_bar:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_system:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    sget v1, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_seekbar:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V

    return-void
.end method

.method private addVolumeBars()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 130
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    .line 131
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    .line 132
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    .line 135
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    :goto_0
    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isBixbyVoiceEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 139
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    :cond_1
    return-void
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .locals 4

    .line 315
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private isBixbyVoiceEnable()Z
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SoundModeTileVolumeMixer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 287
    sget-boolean p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "isBixbyVoiceEnable() Check Knox com mode. return FALSE"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 293
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 295
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "bixby_voice_isenable"

    .line 296
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 298
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    .line 301
    :cond_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 302
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 303
    sget-boolean p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBixbyVoiceEnable() Check Settings value - columnIndex="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",  value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    if-ne v3, p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_0
    return p0

    :cond_5
    const-string p0, "isBixbyVoiceEnable() FALSE"

    .line 308
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isVoiceCallingState()Z
    .locals 4

    .line 176
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 177
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getAudioMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-nez p0, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBars()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    .line 114
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationInterruptionReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->registerReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationInterruptionReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$NotificationInterruptionReceiver;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-void
.end method

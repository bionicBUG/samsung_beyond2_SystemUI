.class public Lcom/android/systemui/volume/util/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# instance fields
.field private mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManagerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

.field private mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/volume/util/LogWrapper;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    return-object p0
.end method


# virtual methods
.method public registerAllSoundOffAction(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$1;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerDisplayManagerStateAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager$3;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDisplayManagerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mDisplayManagerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerMirrorLinkAction(Ljava/lang/Runnable;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mirrorlink.ML_STATE"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$2;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerOpenThemeChangedAction(Ljava/lang/Runnable;)V
    .locals 2

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/android/systemui/volume/util/BroadcastManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/BroadcastManager$4;-><init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 2

    .line 141
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mAllSoundOffBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mMirrorLinkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iput-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager;->mOpenThemeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

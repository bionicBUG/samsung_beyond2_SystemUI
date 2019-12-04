.class public Lcom/android/systemui/volume/SecVolumeDialogImpl;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeStateMapper;
    }
.end annotation


# instance fields
.field private final mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

.field private mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mCoverUtilWrapper:Lcom/android/systemui/volume/util/CoverUtilWrapper;

.field private final mDependency:Lcom/android/systemui/volume/VolumeDependency;

.field private final mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field private final mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/android/systemui/volume/VolumeDependency;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    .line 62
    new-instance p1, Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    .line 63
    const-class p1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    .line 65
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 66
    sget-boolean p1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/android/systemui/volume/util/CoverUtilWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/CoverUtilWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/volume/util/CoverUtilWrapper;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    return-object p0
.end method

.method public static initValues()V
    .locals 5

    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_SILENT:I

    const/4 v1, 0x1

    .line 38
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_VIBRATE:I

    const/4 v2, 0x2

    .line 39
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->RINGER_MODE_NORMAL:I

    .line 40
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_NONE:I

    .line 41
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_TEXT:I

    const/4 v3, 0x4

    .line 42
    sput v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_CONTROLS:I

    const/high16 v4, 0x10000000

    .line 43
    sput v4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_DISMISS_UI_WARNINGS:I

    .line 44
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    const/4 v2, 0x3

    .line 45
    sput v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    .line 46
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    const/4 v1, 0x5

    .line 47
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    const/16 v1, 0xa

    .line 48
    sput v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    .line 49
    sput v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    .line 50
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    const/4 v0, 0x6

    .line 51
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    const/16 v0, 0xd

    .line 52
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    const/16 v0, 0xe

    .line 53
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    const/16 v0, 0x10

    .line 54
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    const/16 v0, 0x14

    .line 55
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    const/4 v0, -0x1

    .line 56
    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanelImpl;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/android/systemui/volume/util/BroadcastManager;->unregisterBroadcastReceiver()V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/volume/util/CoverUtilWrapper;

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/CoverUtilWrapper;->removeListener()V

    :cond_0
    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onInitialize()V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCallbacks:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$to-BDL1zOIns51mqDPpjnF1haKM;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$to-BDL1zOIns51mqDPpjnF1haKM;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerAllSoundOffAction(Ljava/util/function/Consumer;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$e9C78FoGg9kdBnmR4cBvmTFEDyg;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$e9C78FoGg9kdBnmR4cBvmTFEDyg;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerMirrorLinkAction(Ljava/lang/Runnable;)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mBroadcastManager:Lcom/android/systemui/volume/util/BroadcastManager;

    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$KaaDXIHzllAALBvLtbqEePJaqOM;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$KaaDXIHzllAALBvLtbqEePJaqOM;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/BroadcastManager;->registerOpenThemeChangedAction(Ljava/lang/Runnable;)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mSoundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->makeSound()V

    .line 85
    iget-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mCoverUtilWrapper:Lcom/android/systemui/volume/util/CoverUtilWrapper;

    if-eqz p1, :cond_0

    .line 86
    new-instance p2, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$qlhyXjuOnqpskgg0-LRpKYR34tQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$qlhyXjuOnqpskgg0-LRpKYR34tQ;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/CoverUtilWrapper;->addListener(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$0$SecVolumeDialogImpl(Ljava/lang/Boolean;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onAllSoundOff(Z)V

    return-void
.end method

.method public synthetic lambda$init$1$SecVolumeDialogImpl()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onMirrorLink()V

    return-void
.end method

.method public synthetic lambda$init$2$SecVolumeDialogImpl()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onThemeChanged()V

    return-void
.end method

.method public synthetic lambda$init$3$SecVolumeDialogImpl(Landroid/util/Pair;)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl;->mVolumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onCoverStateChanged(ZI)V

    return-void
.end method

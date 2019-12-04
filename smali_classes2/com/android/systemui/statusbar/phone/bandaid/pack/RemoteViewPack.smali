.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;
.super Ljava/lang/Object;
.source "RemoteViewPack.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/bandaid/BandAidPack;


# instance fields
.field private final mBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/bandaid/Band;",
            ">;"
        }
    .end annotation
.end field

.field private final mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/store/NavBarStore;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 46
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 47
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "REMOTE_VIEW_PACK_INIT_REMOTE_VIEW_MANAGER"

    .line 49
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 50
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 51
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$fiQvm0SALKeJWNC7itQP1IpcLLc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$fiQvm0SALKeJWNC7itQP1IpcLLc;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 65
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 66
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "REMOTE_VIEW_PACK_SET_NAVBAR_SHORTCUT"

    .line 67
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 68
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 69
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$X9l6fDIBZj8T8GU7wrhGAUiC900;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$X9l6fDIBZj8T8GU7wrhGAUiC900;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 85
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 86
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "REMOTE_VIEW_PACK_SET_REMOTEVIEW_CONTAINER"

    .line 87
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 88
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 89
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 92
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$P92K4R1z4TEEA3O_s3ql44XniFE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$P92K4R1z4TEEA3O_s3ql44XniFE;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 102
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 103
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "REMOTE_VIEW_PACK_UPDATE_DARK_INTENSITY"

    .line 104
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 105
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 106
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 109
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$yolh9H56K_Zhd3yTQ0C0-F8Ysp8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$yolh9H56K_Zhd3yTQ0C0-F8Ysp8;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 115
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 116
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "REMOTE_VIEW_PACK_INVALIDATE_NAVBAR_REMOTEVIEW"

    .line 117
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 118
    const-class v2, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 119
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 121
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$HUubmlzvoVDlqjy6JgVYK2zs87Y;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$HUubmlzvoVDlqjy6JgVYK2zs87Y;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 127
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v2, v3

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 128
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 129
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 130
    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 131
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 132
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$4XjOvaeJNqb1eZ6xZhsgfF_bCfk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$4XjOvaeJNqb1eZ6xZhsgfF_bCfk;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 144
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    and-int/2addr v2, v3

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 145
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 146
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 147
    const-class v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 148
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$20zZs4HBMqVjBv9kQp-VWGRZHmc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RemoteViewPack$20zZs4HBMqVjBv9kQp-VWGRZHmc;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBands()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/bandaid/Band;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$RemoteViewPack(Ljava/util/Map;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->LEFT_REMOTEVIEW_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->RIGHT_REMOTEVIEW_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$RemoteViewPack(Ljava/util/Map;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_LIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GAME_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GAMETOOLS_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GAMETOOLS_INVISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$RemoteViewPack(Ljava/util/Map;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 94
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_RIGHT_REMOTEVIEW_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_REMOTEVIEW_DARKINTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$RemoteViewPack(Ljava/util/Map;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$4$RemoteViewPack(Ljava/util/Map;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$5$RemoteViewPack(Ljava/util/Map;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 134
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GAME_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 135
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SUPPORT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 136
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 137
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_FLOATING_GAMETOOLS_ICON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$6$RemoteViewPack(Ljava/util/Map;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GAME_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->IME_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 151
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SUPPORT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 152
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 153
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RemoteViewPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

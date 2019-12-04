.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;
.super Ljava/lang/Object;
.source "ConfigurationPack.java"

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
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 45
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_SET_NIGHT_MODE"

    .line 47
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 48
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NIGHT_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 50
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$2fyLhMCxR5n6OJ9Pw3ceeO74b34;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$2fyLhMCxR5n6OJ9Pw3ceeO74b34;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 59
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_NAVBAR_ICON_MARQUEE"

    .line 60
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 61
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_MOVEMENT:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 62
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 63
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 64
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$o-fi2qD2EPQhVyfsBqHmKpkX99Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$o-fi2qD2EPQhVyfsBqHmKpkX99Q;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 73
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_OPEN_THEME_CHANGED"

    .line 74
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 75
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 76
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 77
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$1yPEoI76dZsB3Lj7YCIQsf8Zumk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$1yPEoI76dZsB3Lj7YCIQsf8Zumk;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 90
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_MIRROR_LINK"

    .line 91
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 92
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 93
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 94
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$qG2GACQNpdQhimyogvux_q8LRJQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$qG2GACQNpdQhimyogvux_q8LRJQ;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 104
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 105
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SWITCH_POSITION:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    const-string v1, "CONFIG_PACK_KEY_ORDER_CHANGED"

    .line 106
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 107
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 108
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 109
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$WI_eYz_jryCkwr03duNw0J0cFFs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$WI_eYz_jryCkwr03duNw0J0cFFs;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 114
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_GET_DEADZONE_SIZE"

    .line 115
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 116
    const-class v1, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 117
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 118
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$m715YvMNbBNrqvIQNFN0VSV-UqE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$m715YvMNbBNrqvIQNFN0VSV-UqE;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 128
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "CONFIG_PACK_THEME_DEFULAT_CHANGED"

    .line 129
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 130
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 132
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$ByzztjTV0MhDhF_6sggSTtV_SHE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$ByzztjTV0MhDhF_6sggSTtV_SHE;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 141
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v0, "CONFIG_PACK_GET_THEME_DEFULAT"

    .line 142
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 143
    const-class v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 144
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$19lj-T4lDt4Hgi3sL8XIkj2ZMJI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ConfigurationPack$19lj-T4lDt4Hgi3sL8XIkj2ZMJI;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

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

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REEVALUATE_NAVBAR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$1$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DO_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ACTIVE_THEME_PACKAGE_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->THEME_DEFAULT_ENABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->THEME_DEFAULT_DISABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_ICON_AND_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$3$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->CONNECT_MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISCONNECT_MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$4$ConfigurationPack(Ljava/util/Map;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RE_INFLATE_NAVBAR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$5$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->MAX_DEADZONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DEADZONE_MAX_SIZE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DEADZONE_MIN_SIZE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$6$ConfigurationPack(Ljava/util/Map;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_ICON_AND_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$7$ConfigurationPack(Ljava/util/Map;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ConfigurationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_THEME_DEFAULT_SETTING_VALUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

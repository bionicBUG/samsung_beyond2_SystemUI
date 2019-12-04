.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;
.super Ljava/lang/Object;
.source "ColorPack.java"

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

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private final mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/store/NavBarStore;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 48
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 49
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    and-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 51
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_REEVALUATE_NAVBAR"

    .line 52
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 54
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$ii__J5UHfBm6MhMlpN2ZSk1Wzic;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$ii__J5UHfBm6MhMlpN2ZSk1Wzic;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 61
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 62
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 63
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_GET_NAVBAR_LIGHT"

    .line 64
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 66
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$eCmYnlJlZpUepzNn1U1oDGjdvUI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$eCmYnlJlZpUepzNn1U1oDGjdvUI;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 77
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 78
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 79
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_GET_NAVBAR_OPAQUE"

    .line 80
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 82
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$oWWzv1fRaT33MVgLdUL9rj7Rg74;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$oWWzv1fRaT33MVgLdUL9rj7Rg74;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 93
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 94
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 95
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_UPDATE_NAVBAR_COLOR"

    .line 96
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 98
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$64CI3wEUGs3HnE4Wo2tmNV88v1Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$64CI3wEUGs3HnE4Wo2tmNV88v1Y;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 105
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    and-int/lit8 v1, v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 106
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 107
    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarTintController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_UPDATE_NAVBAR_ICON_COLOR"

    .line 108
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 109
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 110
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$C86IWOZ3mILw4AwdZbkfbvl-nIY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$C86IWOZ3mILw4AwdZbkfbvl-nIY;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 157
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 158
    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarTintController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "COLOR_PACK_TINT_SAMPLING_TURNED_OFF"

    .line 159
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 160
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_TINT_SAMPLING_TURNED_OFF:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 161
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$bFhMm8G9TiPms7nqjVtpVyilp4A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$bFhMm8G9TiPms7nqjVtpVyilp4A;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 168
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 169
    const-class v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v0, "COLOR_PACK_GET_INT_NAVBAR_COLOR"

    .line 170
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 172
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$PLxQJoEmLXoPpex_PlGkvC7tVYY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$ColorPack$PLxQJoEmLXoPpex_PlGkvC7tVYY;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

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

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$ColorPack(Ljava/util/Map;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REEVALUATE_NAVBAR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$1$ColorPack(Ljava/util/Map;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_LIGHT_OPAQUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_LIGHT_TRUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_LIGHT_FALSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$ColorPack(Ljava/util/Map;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_OPAQUE_TRUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_OPAQUE_FALSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$3$ColorPack(Ljava/util/Map;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$4$ColorPack(Ljava/util/Map;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->ICON_COLOR_UPDATE_TIME:Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getValue(Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NEW_LUMA:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3f4ccccd    # 0.8f

    .line 123
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v2

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v3

    cmpg-float v0, p1, v0

    const-string v4, "ColorPack"

    if-gez v0, :cond_1

    if-eqz v3, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set light icon - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    if-nez v3, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set dark icon - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string p1, "Set dark icon - lightNavBAR"

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 147
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string p1, "Set light icon - darkNavBAR"

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$5$ColorPack(Ljava/util/Map;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REEVALUATE_NAVBAR_ICON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$6$ColorPack(Ljava/util/Map;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/ColorPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

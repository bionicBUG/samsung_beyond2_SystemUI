.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;
.super Ljava/lang/Object;
.source "FlagRestorePack.java"

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mBands:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 26
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 28
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "FLAG_RESTORE_PACK_SAVE_INSTANCE"

    .line 29
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SAVE_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$IOkN2uCXrVandX_BvtLzTgOAPcU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$IOkN2uCXrVandX_BvtLzTgOAPcU;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 38
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 39
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "FLAG_RESTORE_PACK_RESTORE_INSTANCE"

    .line 40
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 41
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 42
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$uYVNtUSbu3xF_0n7ztyil5yxbOs;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$uYVNtUSbu3xF_0n7ztyil5yxbOs;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 50
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 51
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 52
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$NuaEzFHdClggSAwXeK6Dqrxgzv0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$FlagRestorePack$NuaEzFHdClggSAwXeK6Dqrxgzv0;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mBands:Ljava/util/List;

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

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$FlagRestorePack(Ljava/util/Map;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SAVE_NAVIGATION_ICON_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SAVE_NAVIGATION_FULLSCREEN_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$1$FlagRestorePack(Ljava/util/Map;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SAVED_STATE_ENABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVIGATION_FULLSCREEN_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$FlagRestorePack(Ljava/util/Map;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SAVED_STATE_ENABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/FlagRestorePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVIGATION_ICON_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

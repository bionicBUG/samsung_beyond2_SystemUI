.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;
.super Ljava/lang/Object;
.source "RotationPack.java"

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
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 28
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 30
    const-class v1, Lcom/android/systemui/statusbar/phone/RotationButtonController;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 31
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v1, "ROTATION_PACK_GET_ROTATE_BUTTON_STYLE"

    .line 32
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 33
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$b49fIEvlA-mvY4E6-A2fzwfS8jY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$b49fIEvlA-mvY4E6-A2fzwfS8jY;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 37
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 38
    const-class v1, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v1, "ROTATION_PACK_SET_FLOATING_ROTATE_BUTTON_DRAWABLE"

    .line 40
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$La68BhfAMOTGoKJZOZ7o8SqfEeI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$La68BhfAMOTGoKJZOZ7o8SqfEeI;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 45
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 46
    const-class v1, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 47
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v1, "ROTATION_PACK_SET_FLOATING_ROTATE_BUTTON_POSITION"

    .line 48
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 49
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$M4zRr-1G-VBDJ7qXgfUBl6lBUP8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$M4zRr-1G-VBDJ7qXgfUBl6lBUP8;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 53
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v0, "ROTATION_PACK_CHECK_ROTATION_BUTTON_DISABLE_POLICY"

    .line 56
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$UgOiPLud-lrMXwD-mhDXRVyF57Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$RotationPack$UgOiPLud-lrMXwD-mhDXRVyF57Q;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

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

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$RotationPack(Ljava/util/Map;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$1$RotationPack(Ljava/util/Map;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$2$RotationPack(Ljava/util/Map;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$3$RotationPack(Ljava/util/Map;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ROTATION_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/RotationPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DISABLE_ROTATE_SUGGESTION:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

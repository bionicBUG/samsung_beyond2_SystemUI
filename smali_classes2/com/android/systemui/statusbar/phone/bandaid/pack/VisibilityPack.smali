.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;
.super Ljava/lang/Object;
.source "VisibilityPack.java"

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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 54
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v0, "VIS_PACK_SET_NAVBAR_VISIBLE_FOR_SHADE"

    .line 56
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 59
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$Pl2nrduMARF7Hltnw3QOj6hbAgQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$Pl2nrduMARF7Hltnw3QOj6hbAgQ;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_UPDATE_NAVBAR_VISIBLE"

    .line 69
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 70
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 72
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$fB8pX3V-cFy7Hzzq5s60iKPvIuA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$fB8pX3V-cFy7Hzzq5s60iKPvIuA;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 87
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_UPDATE_NAVBAR_VISIBILITY_BY_KNOX"

    .line 88
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 89
    const-class v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 90
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 91
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget v2, Lcom/android/systemui/statusbar/phone/bandaid/Band;->LOW_PRIORITY:I

    iput v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPriority:I

    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$5I4IRtBod582hHDUcr98JbPUvMA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$5I4IRtBod582hHDUcr98JbPUvMA;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 101
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v2, "VIS_PACK_UPDATE_NAVBAR_VISIBILITY_BY_FOCUS"

    .line 102
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 103
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 104
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 105
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$4DkSESmT4q8wUIgb6ASHgILfQJ8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$4DkSESmT4q8wUIgb6ASHgILfQJ8;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 119
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 120
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 121
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 122
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 124
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$qoUJYWosPati2ONObbVibA4TjvI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$qoUJYWosPati2ONObbVibA4TjvI;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 130
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_GET_NAVBAR_VISIBILITY_KNOX_POLICY"

    .line 131
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 132
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 133
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 134
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$TZ23Wt_2psUyKhRDx05XoeGqynY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$TZ23Wt_2psUyKhRDx05XoeGqynY;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 142
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_COMPUTE_BAR_MODE"

    .line 143
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 144
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 145
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$DzHdcYI08Wx7AfklpPdzYJra8ZE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$DzHdcYI08Wx7AfklpPdzYJra8ZE;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 160
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_COMPUTE_RESTORE_BAR_MODE"

    .line 161
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 162
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 163
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 164
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$nw2LQa5Zvj_52lFqISEZBoJ4lwc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$nw2LQa5Zvj_52lFqISEZBoJ4lwc;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 177
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "VIS_PACK_RESTORE_NAVBAR_BAR_MODE"

    .line 178
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 179
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 180
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 181
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$kDUBG-LBo9xExyTt2sJRET6UFt4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$kDUBG-LBo9xExyTt2sJRET6UFt4;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 188
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v0, "VIS_PACK_UPDATE_NAVBAR_GONE_SYSUI_STATE"

    .line 189
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 190
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 191
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 192
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$3w3gGqcomYxoZCbNGI2UNT7HDPw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$VisibilityPack$3w3gGqcomYxoZCbNGI2UNT7HDPw;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static applyKnoxHiddenPolicy(Lcom/android/systemui/statusbar/phone/store/NavBarStore;)V
    .locals 1

    .line 206
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_HIDDEN_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
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

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_SHADE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NO_COVER_OR_OPENED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->DATA_ENCRYPTED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NO_COVER_OR_OPENED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_DISABLED_FLAGS:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISABLE_NAVBAR_FADEIN_ANIM:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_KEYGUARD:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_FOCUSED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NO_COVER_OR_OPENED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_HIDDEN_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_KEYGUARD:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_FOCUSED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->DESKTOP_DUAL_VIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 109
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_1

    .line 110
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$4$VisibilityPack(Ljava/util/Map;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->applyKnoxHiddenPolicy(Lcom/android/systemui/statusbar/phone/store/NavBarStore;)V

    return-void
.end method

.method public synthetic lambda$new$5$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_HIDDEN_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE_DIABLED_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$6$VisibilityPack(Ljava/util/Map;)V
    .locals 3

    .line 147
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_OLD_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_OLD_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 148
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/util/BarModeUtil;->barMode(II)I

    move-result v0

    .line 149
    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 150
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 149
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/util/BarModeUtil;->barMode(II)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$7$VisibilityPack(Ljava/util/Map;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 166
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_VIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_COMPUTE_BAR_MODE_NEW_FULLVIS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 170
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 169
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/util/BarModeUtil;->barMode(II)I

    move-result p1

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$8$VisibilityPack(Ljava/util/Map;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$9$VisibilityPack(Ljava/util/Map;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/VisibilityPack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

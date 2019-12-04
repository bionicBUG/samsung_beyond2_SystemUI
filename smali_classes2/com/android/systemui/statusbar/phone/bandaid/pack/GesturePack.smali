.class public Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;
.super Ljava/lang/Object;
.source "GesturePack.java"

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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 93
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 94
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 96
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_SET_HINT_GROUP"

    .line 97
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 99
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$O0vDP2R3B-wfIaPeLB-t1NLX_2g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$O0vDP2R3B-wfIaPeLB-t1NLX_2g;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 107
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 108
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 109
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_START_HINT_VI"

    .line 110
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 112
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$c6ADv8Ng2w5eEmRDsyNRg-IsWpI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$c6ADv8Ng2w5eEmRDsyNRg-IsWpI;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 121
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 122
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 123
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_MOVE_HINT_VI"

    .line 124
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 126
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_o_bo_f8neGxDF6HkvpUQpwRbUo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_o_bo_f8neGxDF6HkvpUQpwRbUo;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 135
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 136
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 137
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_RESET_HINT_VI"

    .line 138
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 140
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$5iP0sZp87SDJe0-Qms_52KRy2Ps;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$5iP0sZp87SDJe0-Qms_52KRy2Ps;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 149
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 150
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 151
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_SET_HINT_VISIBILITY"

    .line 152
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 154
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$WkYkM7sKbd4DC00MFnqMh9rMfJM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$WkYkM7sKbd4DC00MFnqMh9rMfJM;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 165
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 166
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 167
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_ADD_PAY_INTERACTOR"

    .line 168
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 170
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$h_cS6R7Q41vDnj-cUE1gX3Vyn38;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$h_cS6R7Q41vDnj-cUE1gX3Vyn38;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 177
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 178
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 179
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_SET_HINT_VISIBILITY_BY_PAY"

    .line 180
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 181
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 182
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$FdiOydjsgr5K-RgFedra8Dqhh-U;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$FdiOydjsgr5K-RgFedra8Dqhh-U;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 204
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 205
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 206
    const-class v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_SHOW_KEYBOARD_BUTTON"

    .line 207
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 208
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 209
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$HDe90gNdBj-MFxTyI5mVnJvV-m0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$HDe90gNdBj-MFxTyI5mVnJvV-m0;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 224
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 225
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 226
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_SIDE_BACK_DISABLE_BY_POLICY"

    .line 227
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 228
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 229
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_Y6b4fMVmK0RuNRltDap355AaTg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_Y6b4fMVmK0RuNRltDap355AaTg;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 242
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 243
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 244
    const-class v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_GET_SIDE_BACK_DISABLE_BY_POLICY"

    .line 245
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 247
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$NJq4hA0SUh4rEfncfUnRlPquwU8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$NJq4hA0SUh4rEfncfUnRlPquwU8;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 255
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 256
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 257
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_KNOX_HARD_KEY_INTENT_POLICY"

    .line 258
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 259
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 260
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$6Kxat-TcKG3BPnQydD5CYRW2fJA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$6Kxat-TcKG3BPnQydD5CYRW2fJA;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 273
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 274
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 275
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_BROADCAST_HARD_KEY_INTENT"

    .line 276
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 277
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BROADCAST_HARD_KEY_INTENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 278
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$TUvbyYMqVh8HszwBQdXFOlrCl14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$TUvbyYMqVh8HszwBQdXFOlrCl14;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 290
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 291
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 292
    const-class v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_GESTURE_MODE_CHANGED"

    .line 293
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 294
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 295
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$dyvjrzZS9cJyoj6eCJ6CVdGJnkM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$dyvjrzZS9cJyoj6eCJ6CVdGJnkM;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 304
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 305
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 306
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_ADD_GESTURE_INTERCEPT_WINDOW"

    .line 307
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 308
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 309
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$g99TADJV7zN1hYpoyTzQkIDN0Zs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$g99TADJV7zN1hYpoyTzQkIDN0Zs;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 334
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 335
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 336
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_REMOVE_GESTURE_INTERCEPT_WINDOW"

    .line 337
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 339
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$Zns034_pieWzIm1FvGqCXlTsUac;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$Zns034_pieWzIm1FvGqCXlTsUac;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 347
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    const-string v1, "GESTURE_PACK_HIDE_GESTURE_INTERCEPT_WINDOW"

    .line 348
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 349
    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 350
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 351
    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$Tf7erxqmcGvQQYtCF3fRgui-qSE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$Tf7erxqmcGvQQYtCF3fRgui-qSE;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 363
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 364
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 365
    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    .line 366
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 367
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$ulJ-ktKBkljR_-ANzMmwN-h7rX0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$ulJ-ktKBkljR_-ANzMmwN-h7rX0;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 376
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 379
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 380
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 381
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v1, "GESTURE_PACK_RESTORE_TOUCH_EVENT"

    .line 382
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 383
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 384
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v2, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v1, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$A0IkW8wUwJLHC0w5RRECHSeiyjU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$A0IkW8wUwJLHC0w5RRECHSeiyjU;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/bandaid/Band;-><init>()V

    .line 395
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    and-int/2addr v1, v2

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    .line 396
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 397
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetModule:Ljava/lang/reflect/Type;

    const-string v0, "GESTURE_PACK_CHANGE_BUTTON_ORDER"

    .line 398
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTag:Ljava/lang/String;

    .line 399
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 400
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v0, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_uTAxQNrY64Cly6YppYaWKJt7Q4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bandaid/pack/-$$Lambda$GesturePack$_uTAxQNrY64Cly6YppYaWKJt7Q4;-><init>(Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPatchAction:Ljava/util/function/Consumer;

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

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

    .line 411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mBands:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$new$0$GesturePack(Ljava/util/Map;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_GESTURE_HINT_GROUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$1$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$10$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HARD_KEY_INTENT_STATUS:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_KNOX_HARD_KEY_INTENT_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->CLEAR_KNOX_HARD_KEY_INTENT_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$11$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HARD_KEY_INTENT_KEY_CODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SEND_BROADCAST_INTENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$12$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 296
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_MODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    .line 297
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$13$GesturePack(Ljava/util/Map;)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/16 v1, 0x8e2

    .line 312
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x108

    .line 313
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 316
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string v1, "GestureInterceptOverlay"

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 319
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 320
    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_WIDTH:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 321
    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_HEIGHT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 322
    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_GRAVITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 324
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$14$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 340
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$15$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VISIBILITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 355
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VISIBILITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$16$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_WINDOW_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 371
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_WINDOW_STATE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$17$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->BYPASS_MOTION_EVENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    sget-object v1, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$18$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_ICON_AND_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$4$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SPAY_HANDLER_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$5$GesturePack(Ljava/util/Map;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ADD_PAY_INTERACTOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    return-void
.end method

.method public synthetic lambda$new$6$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PAY_SHOWING:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_HOME_HANDLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISMISS_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_HOME_HANDLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$7$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_PORTRAIT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$8$GesturePack(Ljava/util/Map;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_GESTURE_DISABLED:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISABLE_EDGE_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ENABLE_EDGE_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->apply(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$9$GesturePack(Ljava/util/Map;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/bandaid/pack/GesturePack;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->isEnabled(Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->setResult(Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

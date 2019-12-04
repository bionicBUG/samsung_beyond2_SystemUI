.class public Lcom/android/systemui/statusbar/phone/bandaid/Band;
.super Ljava/lang/Object;
.source "Band.java"


# static fields
.field public static LOW_PRIORITY:I = 0x2

.field public static MID_PRIORITY:I = 0x1


# instance fields
.field public mBandAidPatchDependency:Z

.field public mModuleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public mPatchAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPriority:I

.field public mRuneFeatureDependency:Z

.field public mTag:Ljava/lang/String;

.field public mTargetEvent:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public mTargetModule:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mRuneFeatureDependency:Z

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mBandAidPatchDependency:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mModuleDependencies:Ljava/util/List;

    .line 22
    sget v0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->MID_PRIORITY:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/bandaid/Band;->mPriority:I

    return-void
.end method

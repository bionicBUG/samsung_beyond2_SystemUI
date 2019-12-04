.class public final synthetic Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;

    invoke-direct {v0}, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;->INSTANCE:Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$ukqhdRk-GD9cUlDQE-12PY1VO3Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$setStreamVolumeForDualAudio$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

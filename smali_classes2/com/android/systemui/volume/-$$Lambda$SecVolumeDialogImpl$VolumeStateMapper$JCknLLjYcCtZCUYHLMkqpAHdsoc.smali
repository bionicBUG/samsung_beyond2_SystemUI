.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;

    invoke-direct {v0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;->INSTANCE:Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$VolumeStateMapper$JCknLLjYcCtZCUYHLMkqpAHdsoc;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeStateMapper;->lambda$convertStreamStates$0(Landroid/util/Pair;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    move-result-object p0

    return-object p0
.end method

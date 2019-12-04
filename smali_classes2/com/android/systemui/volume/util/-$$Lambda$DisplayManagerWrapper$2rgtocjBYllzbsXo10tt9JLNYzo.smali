.class public final synthetic Lcom/android/systemui/volume/util/-$$Lambda$DisplayManagerWrapper$2rgtocjBYllzbsXo10tt9JLNYzo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/-$$Lambda$DisplayManagerWrapper$2rgtocjBYllzbsXo10tt9JLNYzo;->f$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/volume/util/-$$Lambda$DisplayManagerWrapper$2rgtocjBYllzbsXo10tt9JLNYzo;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onVolumeChanged(IIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/util/-$$Lambda$DisplayManagerWrapper$2rgtocjBYllzbsXo10tt9JLNYzo;->f$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/util/-$$Lambda$DisplayManagerWrapper$2rgtocjBYllzbsXo10tt9JLNYzo;->f$1:Ljava/util/function/Consumer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->lambda$registerDisplayVolumeListener$0$DisplayManagerWrapper(Ljava/util/function/Consumer;IIIZ)V

    return-void
.end method

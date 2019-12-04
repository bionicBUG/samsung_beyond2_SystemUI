.class public final synthetic Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$raBCuL-D9zwUGAdwq7izykT76GM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$raBCuL-D9zwUGAdwq7izykT76GM;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$AudioManagerController$raBCuL-D9zwUGAdwq7izykT76GM;->f$0:I

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$1(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

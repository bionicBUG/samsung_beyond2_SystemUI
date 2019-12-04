.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$0:Z

    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$1:Z

    iput p3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$1:Z

    iget p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$zsQV5JPYxh2su26C_0_BiOWBFfk;->f$2:I

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyEarProtectLevel$2(ZZILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

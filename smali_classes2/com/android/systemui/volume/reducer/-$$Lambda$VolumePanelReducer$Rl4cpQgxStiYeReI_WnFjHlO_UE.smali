.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;->f$0:I

    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;->f$0:I

    iget-boolean p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Rl4cpQgxStiYeReI_WnFjHlO_UE;->f$1:Z

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateRowPriority$21(IZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

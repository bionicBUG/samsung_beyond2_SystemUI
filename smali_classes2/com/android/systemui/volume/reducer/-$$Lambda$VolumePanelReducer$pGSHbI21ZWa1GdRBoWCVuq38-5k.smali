.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;->f$0:I

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$pGSHbI21ZWa1GdRBoWCVuq38-5k;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateRealLevel$10(ILcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

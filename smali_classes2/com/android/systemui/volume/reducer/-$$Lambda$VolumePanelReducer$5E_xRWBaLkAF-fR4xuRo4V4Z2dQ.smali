.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$5E_xRWBaLkAF-fR4xuRo4V4Z2dQ;->f$2:Z

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyImportance$19(Ljava/util/List;Ljava/util/List;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method

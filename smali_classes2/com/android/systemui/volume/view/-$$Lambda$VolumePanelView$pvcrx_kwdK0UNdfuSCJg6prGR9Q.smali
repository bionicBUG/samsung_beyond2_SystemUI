.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumePanelView;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$pvcrx_kwdK0UNdfuSCJg6prGR9Q;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$dispatch$2$VolumePanelView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumePanelView;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field private final synthetic f$2:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-object p3, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$2:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    iget-object v1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelView$GudKs3hhAMcQ7-83dbV2-5P44ew;->f$2:Landroid/view/ViewGroup;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelView;->lambda$addRows$3$VolumePanelView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Landroid/view/ViewGroup;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

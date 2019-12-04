.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumeRowView;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$YkvbOgPGfnOK9PZ_pgacm5wpVA4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$dispatch$3$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumeRowView;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;->f$0:Lcom/android/systemui/volume/view/VolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumeRowView$cEqcqCCbYAyl7UkimFR0yX8UwBU;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateIconTintColor$20$VolumeRowView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

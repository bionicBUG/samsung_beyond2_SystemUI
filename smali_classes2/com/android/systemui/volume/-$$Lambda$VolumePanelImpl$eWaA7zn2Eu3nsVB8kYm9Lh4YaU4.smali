.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumePanelImpl$eWaA7zn2Eu3nsVB8kYm9Lh4YaU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumePanelImpl;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelImpl$eWaA7zn2Eu3nsVB8kYm9Lh4YaU4;->f$0:Lcom/android/systemui/volume/VolumePanelImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelImpl$eWaA7zn2Eu3nsVB8kYm9Lh4YaU4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelImpl$eWaA7zn2Eu3nsVB8kYm9Lh4YaU4;->f$0:Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelImpl$eWaA7zn2Eu3nsVB8kYm9Lh4YaU4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumePanelImpl;->lambda$dispatch$0$VolumePanelImpl(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

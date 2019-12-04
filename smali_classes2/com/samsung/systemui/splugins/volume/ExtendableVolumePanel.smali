.class public interface abstract Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
.super Ljava/lang/Object;
.source "ExtendableVolumePanel.java"


# virtual methods
.method public abstract restoreToDefaultStore()V
.end method

.method public abstract setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)V"
        }
    .end annotation
.end method

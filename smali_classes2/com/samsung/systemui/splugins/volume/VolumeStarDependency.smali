.class public interface abstract Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;
.super Ljava/lang/Object;
.source "VolumeStarDependency.java"


# virtual methods
.method public abstract getDefaultMiddlewares()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultReducer()Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;
.end method

.method public abstract getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.end method

.method public abstract getVolumePanel()Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
.end method

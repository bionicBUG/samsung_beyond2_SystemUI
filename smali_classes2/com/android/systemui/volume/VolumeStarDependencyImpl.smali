.class public Lcom/android/systemui/volume/VolumeStarDependencyImpl;
.super Ljava/lang/Object;
.source "VolumeStarDependencyImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;


# instance fields
.field private final mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field private final mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    return-void
.end method


# virtual methods
.method public getDefaultMiddlewares()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/android/systemui/volume/middleware/DeviceStateController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/android/systemui/volume/middleware/AudioManagerController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDefaultReducer()Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;
    .locals 0

    .line 41
    new-instance p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    invoke-direct {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    return-object p0
.end method

.method public getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/volume/SecVolumeInfraMediator;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SecVolumeInfraMediator;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    return-object v0
.end method

.method public getVolumePanel()Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->mVolumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    return-object p0
.end method

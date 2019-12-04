.class Lcom/android/systemui/volume/VolumeStarInteractor$1;
.super Ljava/lang/Object;
.source "VolumeStarInteractor.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeStarInteractor;->start(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeStarInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeStarInteractor;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeStarInteractor$1;->onPluginConnected(Lcom/samsung/systemui/splugins/volume/VolumeStar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/volume/VolumeStar;Landroid/content/Context;)V
    .locals 4

    const-string v0, "VolumeStarInteractor"

    const-string v1, "onPluginConnected"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$002(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/samsung/systemui/splugins/volume/VolumeStar;)Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 34
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$000(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/VolumeStar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$100(Lcom/android/systemui/volume/VolumeStarInteractor;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeStarDependencyImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$200(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/android/systemui/volume/VolumeDependencyBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$300(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/volume/VolumeStarDependencyImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$000(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/VolumeStar;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->start()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeStarInteractor$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/volume/VolumeStar;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/volume/VolumeStar;I)V
    .locals 0

    const-string p1, "VolumeStarInteractor"

    const-string p2, "onPluginDisconnected"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeStarInteractor;->access$000(Lcom/android/systemui/volume/VolumeStarInteractor;)Lcom/samsung/systemui/splugins/volume/VolumeStar;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->stop()V

    return-void
.end method

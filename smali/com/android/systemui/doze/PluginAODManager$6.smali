.class Lcom/android/systemui/doze/PluginAODManager$6;
.super Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;
.source "PluginAODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicButtonClicked(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->onMusicButtonClicked(I)V

    :cond_0
    return-void
.end method

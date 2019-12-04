.class Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicContentCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public registerListener()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->requestCacheData(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;-><init>(Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;)V

    invoke-static {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->access$1002(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->addCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->requestCacheData(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    return-void
.end method

.method public requestLastMusicContent()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->requestCacheData(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    :cond_0
    return-void
.end method

.method public sendKeyCode(I)V
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sendKeyToPlayer(I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1100(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    return-void
.end method

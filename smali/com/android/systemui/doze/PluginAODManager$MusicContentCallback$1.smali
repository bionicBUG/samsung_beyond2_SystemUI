.class Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;
.super Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;
.source "PluginAODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->clear()V

    goto :goto_0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 997
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->clear()V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 999
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->clear()V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string v0, "clear() but no plugin instance"

    .line 1001
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isFaceWidgetMusicControllerDisabled()Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->isMusicControllerDisabled()Z

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1066
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->isMusicControllerDisabled()Z

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1068
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->isMusicControllerDisabled()Z

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string v0, "isMusicControllerDisabled() but no plugin instance"

    .line 1070
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1042
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string p1, "setAppName() but no plugin instance"

    .line 1044
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1025
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string p1, "setMetadata() but no plugin instance"

    .line 1027
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMusicSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMusicSessionActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 984
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMusicSessionActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 986
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setMusicSessionActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string p1, "setMusicSessionActivity() but no plugin instance"

    .line 988
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1010
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string p1, "setPlaybackState() but no plugin instance"

    .line 1014
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setSessionEnabled(Z)V

    goto :goto_0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1053
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setSessionEnabled(Z)V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback$1;->this$1:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setSessionEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string p0, "PluginAODManager"

    const-string p1, "setSessionEnabled() but no plugin instance"

    .line 1057
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

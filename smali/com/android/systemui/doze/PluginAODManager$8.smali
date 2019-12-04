.class Lcom/android/systemui/doze/PluginAODManager$8;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;


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

    .line 324
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBottomArea(Landroid/view/View;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "setBottomArea() "

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeHost;->setBottomDozeArea(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# static fields
.field private static final PLUGIN_CONNECTED:I = 0x1

.field private static final PLUGIN_DISCONNECTED:I = 0x2

.field private static final PLUGIN_UPDATED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 233
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 234
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "["

    const-string v4, "PluginInstanceManager"

    if-eq v1, v2, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    .line 269
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [PLUGIN_UPDATED], mPackage "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {p0, p1, v2}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 264
    iget-object p0, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of p1, p0, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez p1, :cond_5

    .line 265
    check-cast p0, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto/16 :goto_1

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [PLUGIN_DISCONNECTED] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->access$300(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPkgChanged ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$900(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$900(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {p0, p1, v5}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/systemui/splugins/SPlugin;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 254
    :goto_0
    iget-object p0, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of p1, p0, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez p1, :cond_5

    .line 257
    check-cast p0, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    goto :goto_1

    .line 236
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$500(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], [PLUGIN_CONNECTED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$700(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->handleWtfs()V

    .line 239
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez p1, :cond_4

    .line 242
    iget-object p1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/systemui/splugins/SPlugin;

    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$600(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->access$200(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 244
    :cond_4
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->access$800(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->access$200(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V

    :cond_5
    :goto_1
    return-void
.end method

.class Lcom/samsung/android/systemui/multistar/MultiStarManager$1;
.super Ljava/lang/Object;
.source "MultiStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPluginConnected"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 78
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$400(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getDockedStackListener()Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$502(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->notifyLastState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getMultiWindowEventListener()Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$702(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    .line 87
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$800(Lcom/samsung/android/systemui/multistar/MultiStarManager;Z)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 71
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;I)V
    .locals 0

    .line 93
    invoke-static {}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPluginDisconnected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 94
    invoke-static {p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 95
    iget-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p2, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$502(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    .line 96
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$702(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-void
.end method

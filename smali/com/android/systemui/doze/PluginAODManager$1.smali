.class Lcom/android/systemui/doze/PluginAODManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 130
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    .line 136
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p1}, Lcom/android/systemui/doze/PluginAODManager;->access$200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$1;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_1
    :goto_0
    return-void
.end method

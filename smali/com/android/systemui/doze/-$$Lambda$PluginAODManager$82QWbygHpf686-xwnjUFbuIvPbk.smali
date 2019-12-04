.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/PluginAODManager;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;->f$0:Lcom/android/systemui/doze/PluginAODManager;

    iput-object p2, p0, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;->f$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->lambda$sendIntent$1$PluginAODManager(Landroid/content/Intent;)V

    return-void
.end method

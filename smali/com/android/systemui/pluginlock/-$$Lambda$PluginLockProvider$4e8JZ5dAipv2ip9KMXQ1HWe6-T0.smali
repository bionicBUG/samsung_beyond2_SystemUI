.class public final synthetic Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/Bundle;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$4e8JZ5dAipv2ip9KMXQ1HWe6-T0;->f$3:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockProvider;->lambda$call$1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    return-void
.end method

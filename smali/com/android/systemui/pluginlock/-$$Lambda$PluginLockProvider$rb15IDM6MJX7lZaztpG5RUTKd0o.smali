.class public final synthetic Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;->f$0:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;->f$0:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$rb15IDM6MJX7lZaztpG5RUTKd0o;->f$1:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockProvider;->lambda$call$0(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/os/Bundle;Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    return-void
.end method

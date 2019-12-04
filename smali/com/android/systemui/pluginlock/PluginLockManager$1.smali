.class Lcom/android/systemui/pluginlock/PluginLockManager$1;
.super Ljava/lang/Object;
.source "PluginLockManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$1;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$000(Lcom/android/systemui/pluginlock/PluginLockManager;Z)V

    return-void
.end method

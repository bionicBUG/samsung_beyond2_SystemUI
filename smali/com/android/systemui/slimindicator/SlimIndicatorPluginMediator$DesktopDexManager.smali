.class Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;
.super Ljava/lang/Object;
.source "SlimIndicatorPluginMediator.java"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopDexManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-static {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->access$300(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    const-string v1, "DesktopDexManager onServiceConnected() resetValue!"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->access$300(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->backUpAndResetValue()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-static {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->access$300(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    const-string v1, "DesktopDexManager onServiceDisconnected() restoreValue!"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-static {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->access$300(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->restoreValue()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 1

    .line 161
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 165
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    return-void
.end method

.class Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "MultiStarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/multistar/MultiStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    return-void
.end method


# virtual methods
.method public onFocusedDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onFocusedStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;->onFocusStackChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public onSnapWindowVisibilityChanged(ZLjava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;->onSnapWindowVisibilityChanged(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

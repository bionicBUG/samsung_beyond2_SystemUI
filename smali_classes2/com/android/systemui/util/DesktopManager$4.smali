.class Lcom/android/systemui/util/DesktopManager$4;
.super Ljava/lang/Object;
.source "DesktopManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDesktopModeStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManager;->access$1300(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/util/DesktopManager;->access$1400(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0, p1}, Lcom/android/systemui/util/DesktopManager;->access$1500(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager$4;->this$0:Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/util/DesktopManager;->access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 189
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

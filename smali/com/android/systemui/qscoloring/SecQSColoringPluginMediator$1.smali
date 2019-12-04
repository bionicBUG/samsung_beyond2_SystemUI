.class Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;
.super Ljava/lang/Object;
.source "SecQSColoringPluginMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->makePluginQSColoringCallback()Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyColoring(Z)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginQSColoring.Callback applyColoring() enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-static {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->access$000(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V

    .line 117
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->refreshAllFunctions()V

    return-void
.end method

.method public applyColoringBlurEffect(ZF)V
    .locals 1

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PluginQSColoring.Callback applyColoringBlurEffect(enabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", amount:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applyColoringButtonGrid(I)V
    .locals 1

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PluginQSColoring.Callback applyColoringButtonGrid(gridType:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applyColoringDimEffect(ZF)V
    .locals 1

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PluginQSColoring.Callback applyColoringDimEffect(enabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", amount:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applyColoringResources()V
    .locals 2

    const-string v0, "[QuickStar]SecQSColoringPluginMediator"

    const-string v1, "PluginQSColoring.Callback applyColoringResources()"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-static {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->access$000(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V

    .line 124
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->refreshAllFunctions()V

    return-void
.end method

.method public applyNotificationColoring(Z)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginQSColoring.Callback applyNotificationColoring(enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-static {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->access$000(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V

    return-void
.end method

.method public getQSPanelColors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "[QuickStar]SecQSColoringPluginMediator"

    const-string v0, "PluginQSColoring.Callback getQSPanelColors()"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

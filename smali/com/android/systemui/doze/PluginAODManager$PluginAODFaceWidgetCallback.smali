.class Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginAODFaceWidgetCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1091
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getClockSidePadding()I
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1147
    :cond_0
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result p0

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClockSidePadding() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getClockType()I
    .locals 2

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getLastLockClockType()I

    move-result p0

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClockType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCurrentPageKey()Ljava/lang/String;
    .locals 0

    .line 1100
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinTopMargin()I
    .locals 2

    .line 1160
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getMinTopMargin(Z)I

    move-result p0

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMinTopMargin() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getPage(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 1110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getCachePage(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLockClockGravity()I
    .locals 2

    .line 1179
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    .line 1180
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockGravity()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1183
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPluginLockClockGravity() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getPluginLockTopMargin()I
    .locals 2

    .line 1168
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p0

    .line 1169
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getServiceBoxTopPadding()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1172
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPluginLockTopMargin() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public hasMultiplePages()Z
    .locals 0

    .line 1105
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isClockOnly()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public requestAODState(ZZ)V
    .locals 2

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAODState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetController;->requestAODState(ZZ)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 2

    .line 1121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->setCurrentPage(Ljava/lang/String;)V

    return-void
.end method

.method public setPageTransformer(Z)V
    .locals 2

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPageTransformer() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->setPageTransformer(Z)V

    return-void
.end method

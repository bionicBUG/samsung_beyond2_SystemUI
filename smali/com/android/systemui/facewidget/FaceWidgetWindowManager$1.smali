.class Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetWindowManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardBouncerChanged() bouncer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged() showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateCoverState() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeAllViews()V

    :cond_0
    return-void
.end method

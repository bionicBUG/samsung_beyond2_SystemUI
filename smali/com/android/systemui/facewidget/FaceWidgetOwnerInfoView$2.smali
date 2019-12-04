.class Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->access$000(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Z)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->access$000(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->access$000(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Z)V

    return-void
.end method

.class Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;Landroid/os/Looper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12ce

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

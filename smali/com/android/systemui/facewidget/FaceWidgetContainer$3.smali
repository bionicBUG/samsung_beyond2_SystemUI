.class Lcom/android/systemui/facewidget/FaceWidgetContainer$3;
.super Ljava/lang/Object;
.source "FaceWidgetContainer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$3;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$3;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1800(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$3;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1800(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_0
    return-void
.end method

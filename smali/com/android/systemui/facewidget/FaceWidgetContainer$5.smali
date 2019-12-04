.class Lcom/android/systemui/facewidget/FaceWidgetContainer$5;
.super Ljava/lang/Object;
.source "FaceWidgetContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/FaceWidgetContainer;->updatePageState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

.field final synthetic val$forceUpdate:Z

.field final synthetic val$toState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->val$toState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-boolean p3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->val$forceUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    const-string v0, "FaceWidgetContainer"

    const-string/jumbo v1, "updatePageState() >> PROGRESS >> onPreDraw()"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->val$toState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iget-boolean v3, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->val$forceUpdate:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePageState() << END << toState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$5;->val$toState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

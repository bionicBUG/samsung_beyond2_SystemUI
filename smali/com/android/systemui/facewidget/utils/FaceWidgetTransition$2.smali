.class Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;
.super Ljava/lang/Object;
.source "FaceWidgetTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)I

    move-result v0

    const-string v1, "FaceWidgetTransition"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation state isn\'t none "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$300(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$202(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;I)I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$400(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$500(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$600(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setClipOnAll(Landroid/view/View;Z)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$700(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$800(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$800(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_1
    return v2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$000(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$202(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;I)I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animation started "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$2;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$300(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

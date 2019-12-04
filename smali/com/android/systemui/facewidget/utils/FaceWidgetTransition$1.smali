.class Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceWidgetTransition.java"


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

    .line 73
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-static {p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$000(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;Z)V

    return-void
.end method

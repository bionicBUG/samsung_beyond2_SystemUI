.class Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceWidgetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dismissFaceWidget()V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dismissFaceWidget()V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    .line 90
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->onDismissFaceWidgetFullScreenStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

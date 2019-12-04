.class Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;
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

    .line 110
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onPageTransitionEnded()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    return-void
.end method

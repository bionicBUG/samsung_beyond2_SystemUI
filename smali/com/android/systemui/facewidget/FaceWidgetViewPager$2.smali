.class Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;
.super Ljava/lang/Object;
.source "FaceWidgetViewPager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/FaceWidgetViewPager;->recalculateScrollPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

.field final synthetic val$currentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Landroid/view/View;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-eq p2, p6, :cond_0

    .line 219
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->val$currentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "recalculateScrollPosition(), set to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->val$currentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceWidgetViewPager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;->val$currentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/ViewPager;->setScrollX(I)V

    :cond_0
    return-void
.end method

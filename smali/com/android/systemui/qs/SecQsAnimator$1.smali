.class Lcom/android/systemui/qs/SecQsAnimator$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "SecQsAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQsAnimator;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsAnimator;->access$000(Lcom/android/systemui/qs/SecQsAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsAnimator;->access$100(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQsAnimator;->access$200(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsAnimator;->access$000(Lcom/android/systemui/qs/SecQsAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsAnimator;->access$100(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQsAnimator;->access$200(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

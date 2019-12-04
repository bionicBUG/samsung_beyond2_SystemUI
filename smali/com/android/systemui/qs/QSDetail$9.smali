.class Lcom/android/systemui/qs/QSDetail$9;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideDetailAnimEnd()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$1000(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 812
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 813
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QSDetail;->access$1102(Lcom/android/systemui/qs/QSDetail;Z)Z

    return-void
.end method

.method public showDetailAnimEnd()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$200(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->access$702(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 807
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$9;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$800(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method

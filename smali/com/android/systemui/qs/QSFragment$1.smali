.class Lcom/android/systemui/qs/QSFragment$1;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/BarController$BarItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarHeightChanged()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->initLasExpansionHeight()V

    return-void
.end method

.method public onBarTypeChanged()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$000(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/SecQsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public onBarVisibilityChanged()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$000(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/SecQsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

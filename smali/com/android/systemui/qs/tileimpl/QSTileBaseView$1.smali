.class Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.class Lcom/android/systemui/power/UnintentionalLcdOnView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/UnintentionalLcdOnView;->animateText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$400(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

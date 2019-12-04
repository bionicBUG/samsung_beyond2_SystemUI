.class Lcom/android/systemui/power/UnintentionalLcdOnView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V
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

    .line 197
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$300(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

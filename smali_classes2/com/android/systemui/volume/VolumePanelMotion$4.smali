.class Lcom/android/systemui/volume/VolumePanelMotion$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanelMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanelMotion;->getRowsAlphaAnimation(Landroid/view/ViewGroup;ZIZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelMotion;

.field final synthetic val$rowContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanelMotion;Landroid/view/ViewGroup;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion$4;->this$0:Lcom/android/systemui/volume/VolumePanelMotion;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelMotion$4;->val$rowContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion$4;->val$rowContainer:Landroid/view/ViewGroup;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

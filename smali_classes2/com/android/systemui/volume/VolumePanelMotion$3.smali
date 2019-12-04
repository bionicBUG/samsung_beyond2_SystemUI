.class Lcom/android/systemui/volume/VolumePanelMotion$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanelMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanelMotion;->getBackgroundMotionAnimation(Landroid/view/ViewGroup;III)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelMotion;

.field final synthetic val$background:Landroid/view/ViewGroup;

.field final synthetic val$targetBackgroundHeight:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanelMotion;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->this$0:Lcom/android/systemui/volume/VolumePanelMotion;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->val$background:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->val$targetBackgroundHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->val$background:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 147
    iget v0, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->val$targetBackgroundHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->val$background:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelMotion$3;->this$0:Lcom/android/systemui/volume/VolumePanelMotion;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_BACKGROUND_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 150
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

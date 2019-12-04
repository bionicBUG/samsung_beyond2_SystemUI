.class public Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;
.super Ljava/lang/Object;
.source "CircleEffectPlayer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/floating/EffectPlayer;


# instance fields
.field private mEffectLayer:Landroid/view/ViewGroup;

.field private mEffectView:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public focusEffect(II)V
    .locals 0

    return-void
.end method

.method public hideEffect()V
    .locals 0

    return-void
.end method

.method public moveEffect(II)V
    .locals 0

    return-void
.end method

.method public setEffectLayer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    sget v0, Lcom/android/systemui/R$drawable;->scrubber_control_to_pressed_mtrl_000:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectLayer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;->mEffectView:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, -0x2

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public showEffect(II)V
    .locals 0

    return-void
.end method

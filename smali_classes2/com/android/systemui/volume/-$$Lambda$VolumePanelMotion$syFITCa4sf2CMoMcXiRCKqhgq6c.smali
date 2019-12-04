.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$syFITCa4sf2CMoMcXiRCKqhgq6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$syFITCa4sf2CMoMcXiRCKqhgq6c;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumePanelMotion$syFITCa4sf2CMoMcXiRCKqhgq6c;->f$0:Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumePanelMotion;->lambda$getBackgroundMotionAnimation$2(Landroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void
.end method

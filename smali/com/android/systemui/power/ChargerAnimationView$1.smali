.class Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "BackGroundAnimation Ended"

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p0}, Lcom/android/systemui/power/ChargerAnimationView;->access$000(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;->onChargerAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.class Lcom/android/systemui/power/ChargerAnimationView$4;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(IZZ)V
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

    .line 270
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$4;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "PowerUI.ChargerAnimationView"

    const-string p1, "ChargerAnimation canceled"

    .line 283
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "PowerUI.ChargerAnimationView"

    const-string p1, "ChargerAnimation ended"

    .line 277
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->chargingAnimStarted(Z)V

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

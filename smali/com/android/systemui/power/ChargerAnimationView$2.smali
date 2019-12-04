.class Lcom/android/systemui/power/ChargerAnimationView$2;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V
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

    .line 182
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "BatteryLevelTextAnimation started"

    .line 185
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->charger_anim_battery_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->status_bar_settings_battery_meter_format:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v3}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p1}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p0}, Lcom/android/systemui/power/ChargerAnimationView;->access$400(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

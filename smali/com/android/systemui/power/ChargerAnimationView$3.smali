.class Lcom/android/systemui/power/ChargerAnimationView$3;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;

.field final synthetic val$displayBatteryLevel:I


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;I)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->val$displayBatteryLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$300(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->status_bar_settings_battery_meter_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->val$displayBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->val$displayBatteryLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->access$200(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->access$502(Lcom/android/systemui/power/ChargerAnimationView;I)I

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$3;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {p0}, Lcom/android/systemui/power/ChargerAnimationView;->access$600(Lcom/android/systemui/power/ChargerAnimationView;)V

    :goto_0
    return-void
.end method

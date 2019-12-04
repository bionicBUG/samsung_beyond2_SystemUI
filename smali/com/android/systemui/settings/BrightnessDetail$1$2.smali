.class Lcom/android/systemui/settings/BrightnessDetail$1$2;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->initDetailViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 227
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 230
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    const-string v2, "4006"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/settings/BrightnessDetail$1;->access$700(Lcom/android/systemui/settings/BrightnessDetail$1;Ljava/lang/String;Z)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->access$800(Lcom/android/systemui/settings/BrightnessDetail;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessDetail;->access$900(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setAutoBrightness(Z)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessDetail;->access$600(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p1, p1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$900(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setAutoBrightness(Z)V

    .line 239
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$2;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

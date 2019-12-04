.class Lcom/android/systemui/settings/BrightnessDetail$1$4;
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

    .line 258
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 261
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 263
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    const-string v1, "4006"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/settings/BrightnessDetail$1;->access$700(Lcom/android/systemui/settings/BrightnessDetail$1;Ljava/lang/String;Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$800(Lcom/android/systemui/settings/BrightnessDetail;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$900(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setAutoBrightness(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$600(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$900(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setAutoBrightness(Z)V

    .line 272
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$4;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessDetail;->access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

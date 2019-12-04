.class Lcom/android/systemui/settings/ToggleSliderView$4;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSliderView;->showEyeStrainDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$4;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 428
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$4;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$1402(Lcom/android/systemui/settings/ToggleSliderView;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 429
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$4;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$4;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1700(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "shown_max_brightness_dialog"

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 432
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$4;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$902(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    return-void
.end method

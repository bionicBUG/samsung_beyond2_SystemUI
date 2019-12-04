.class Lcom/android/systemui/settings/BrightnessController$4;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1500(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 295
    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    const-string v4, "screen_brightness_for_vr"

    .line 294
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$600(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 299
    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    const-string v4, "screen_brightness"

    .line 298
    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 302
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$1200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

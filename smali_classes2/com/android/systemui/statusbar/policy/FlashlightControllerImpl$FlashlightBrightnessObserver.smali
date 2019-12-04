.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashlightBrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 3

    .line 361
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 362
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 363
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Flashlight_brightness_level"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "Flashlight_brightness_level"

    const/16 v1, 0x3ec

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1202(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlashlightBrightnessObserver onReceive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashlightController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

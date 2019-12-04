.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;
.super Landroid/database/ContentObserver;
.source "TiltColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 486
    invoke-static {}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange: setting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 489
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

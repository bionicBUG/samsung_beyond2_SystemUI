.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;
.super Landroid/os/Handler;
.source "TiltColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$000(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)V

    return-void
.end method

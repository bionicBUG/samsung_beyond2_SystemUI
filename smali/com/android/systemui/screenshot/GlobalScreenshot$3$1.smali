.class Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$bundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    const-string v2, "rect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$302(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-boolean v3, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iget-boolean v4, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V

    .line 1420
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method

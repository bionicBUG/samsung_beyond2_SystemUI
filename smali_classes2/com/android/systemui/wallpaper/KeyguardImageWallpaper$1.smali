.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final seq:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$forceSmartCrop:Z

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;Z)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$forceSmartCrop:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 377
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$004(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 2

    .line 381
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->loadBitmap(ILandroid/os/UserHandle;Z)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 376
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V
    .locals 4

    .line 386
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v1

    const-string v2, "KeyguardImageWallpaper"

    if-eq v0, v1, :cond_1

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return onPostExecute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$102(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 398
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    .line 400
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$forceSmartCrop:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 401
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 405
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$700(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    .line 408
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$800(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 410
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 411
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    .line 412
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$902(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 421
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    const-string p1, "updateWallpaper() DONE"

    .line 424
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 430
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "updateWallpaper() no last command, send \"WAKE_LOCK\"."

    .line 431
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    const-string p1, "WAKE_LOCK"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->onCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V

    return-void
.end method

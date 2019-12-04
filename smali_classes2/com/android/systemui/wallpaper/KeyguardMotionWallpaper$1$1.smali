.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    .locals 6

    const/4 v0, 0x0

    .line 280
    aget-object p1, p1, v0

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getType()I

    move-result v0

    const-string v1, "KeyguardMotionWallpaper"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v5, v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    .line 286
    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 287
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 289
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    .line 290
    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadDrawable exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 303
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v3

    .line 311
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->access$1000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 313
    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v0, v3, :cond_4

    .line 321
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    .line 322
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    :cond_4
    const-string v0, "layer process finishied"

    .line 326
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    .line 331
    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1e

    .line 329
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    .line 333
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    .line 334
    invoke-virtual {p1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 276
    check-cast p1, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 1

    const-string p0, "KeyguardMotionWallpaper"

    const-string v0, "asyncTask cancelled!"

    .line 393
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 395
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 5

    const-string v0, "KeyguardMotionWallpaper"

    if-nez p1, :cond_0

    const-string p0, "null bitmap returned"

    .line 342
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_2

    .line 348
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_1
    const-string v2, "asyncTask onPostExecute!"

    .line 353
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 354
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "BITMAP LOAD FINISH"

    .line 356
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "IndexOutOfBoundsException"

    .line 368
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string p1, "CloneNotSupportedException"

    .line 366
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move p1, v1

    .line 371
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    mul-int/lit8 v2, p1, 0x1e

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 380
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 381
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    .line 384
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z

    :cond_5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method

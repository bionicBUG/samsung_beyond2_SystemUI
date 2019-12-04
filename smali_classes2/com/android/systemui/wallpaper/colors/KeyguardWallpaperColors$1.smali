.class Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;
.super Landroid/os/AsyncTask;
.source "KeyguardWallpaperColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->extractAdaptiveColor(Landroid/graphics/Bitmap;)V
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
        "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->this$0:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 2

    .line 319
    iget-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->this$0:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->access$100(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 326
    invoke-static {}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "doInBackground: adaptiveBitmap is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 330
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->this$0:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->access$200(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    return-object p0

    .line 320
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "doInBackground: bitmap is null or recycled!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 316
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 1

    .line 336
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPostExecute: canceled task, do not update."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->this$0:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setAdaptiveColorResult(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;->onPostExecute(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

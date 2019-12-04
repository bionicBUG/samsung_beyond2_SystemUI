.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardVideoWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreImgAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$PreImgAsyncTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

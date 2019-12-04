.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;
.super Landroid/os/AsyncTask;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    aget v0, v0, v1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 176
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->bitmap:Landroid/graphics/Bitmap;

    .line 183
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$302(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I

    .line 184
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->this$1:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->val$sequence:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

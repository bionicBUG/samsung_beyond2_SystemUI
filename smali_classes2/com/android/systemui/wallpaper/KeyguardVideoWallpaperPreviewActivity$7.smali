.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$7;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->initConvertingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1226
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1227
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->interrupt()V

    :cond_0
    return-void
.end method

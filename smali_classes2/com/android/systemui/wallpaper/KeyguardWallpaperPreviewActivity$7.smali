.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 508
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->access$1002(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z

    .line 509
    sget-boolean p1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->access$1100(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->access$1000(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setHomeSensorEnabled(Z)V

    :cond_0
    return-void
.end method

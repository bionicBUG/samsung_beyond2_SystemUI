.class Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnSemColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;->this$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorsChanged(Landroid/app/SemWallpaperColors;I)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 434
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onColorsChanged: colors is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;->this$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-static {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$100(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)I

    move-result v0

    and-int/lit8 p2, p2, 0x1c

    and-int/lit8 v0, v0, 0x1c

    if-ne p2, v0, :cond_1

    .line 440
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;->this$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-static {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$200(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;Landroid/app/SemWallpaperColors;)V

    :cond_1
    return-void
.end method

.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$4;
.super Landroid/database/ContentObserver;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/os/Handler;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1399
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onChange "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardImageWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    return-void
.end method

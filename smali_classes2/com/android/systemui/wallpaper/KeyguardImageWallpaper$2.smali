.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;
.super Landroid/os/FileObserver;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/16 p2, 0x200

    if-eq p1, p2, :cond_0

    const/16 p2, 0x400

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KeyguardImageWallpaper"

    const-string p2, "MDM wallpaper changed"

    .line 873
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    :goto_0
    return-void
.end method

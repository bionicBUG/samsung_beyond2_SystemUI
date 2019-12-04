.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$3;
.super Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->startTransitionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1306
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1307
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->requestDraw()V

    return-void
.end method

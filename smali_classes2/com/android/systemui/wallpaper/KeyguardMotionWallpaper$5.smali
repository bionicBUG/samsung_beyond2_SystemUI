.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

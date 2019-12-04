.class Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdateAnimatorListener"
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;Lcom/android/systemui/statusbar/phone/TrustDrawable$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 286
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    if-nez p1, :cond_0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->access$300(Lcom/android/systemui/statusbar/phone/TrustDrawable;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method

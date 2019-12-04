.class Lcom/android/systemui/qs/QSFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 617
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSFragment;->access$302(Lcom/android/systemui/qs/QSFragment;Z)Z

    .line 618
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$400(Lcom/android/systemui/qs/QSFragment;)V

    return-void
.end method

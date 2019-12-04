.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceWidgetMusicPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHideAnimatorListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 986
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 987
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 992
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 993
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 994
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

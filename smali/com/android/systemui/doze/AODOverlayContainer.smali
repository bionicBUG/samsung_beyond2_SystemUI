.class public Lcom/android/systemui/doze/AODOverlayContainer;
.super Landroid/widget/FrameLayout;
.source "AODOverlayContainer.java"


# instance fields
.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/systemui/doze/AODOverlayContainer;->mVisibility:I

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAllowedPokeDrawLock(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/systemui/doze/AODOverlayContainer;->mVisibility:I

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAllowedPokeDrawLock(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/systemui/doze/AODOverlayContainer;->mVisibility:I

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAllowedPokeDrawLock(Z)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 2

    .line 40
    iget v0, p0, Lcom/android/systemui/doze/AODOverlayContainer;->mVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    .line 43
    :cond_0
    iput p1, p0, Lcom/android/systemui/doze/AODOverlayContainer;->mVisibility:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODOverlayContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

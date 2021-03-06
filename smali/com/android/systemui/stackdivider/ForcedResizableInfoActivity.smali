.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;
.super Landroid/app/Activity;
.source "ForcedResizableInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 119
    sget v0, Lcom/android/systemui/R$anim;->forced_resizable_exit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    .line 65
    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->forced_resizable_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x102000b

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "extra_forced_resizeable_reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 79
    sget v0, Lcom/android/systemui/R$string;->freeform_forced_resizable:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected forced resizeable reason: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->forced_resizable_secondary_display:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    sget v0, Lcom/android/systemui/R$string;->dock_forced_resizable:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onStart()V
    .locals 3

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method

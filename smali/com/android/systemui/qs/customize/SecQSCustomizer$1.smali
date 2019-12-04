.class Lcom/android/systemui/qs/customize/SecQSCustomizer$1;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SecQSCustomizer"

    const-string v0, " expand end"

    .line 154
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

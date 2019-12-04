.class Lcom/android/systemui/qs/customize/SecQSCustomizer$2;
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

    .line 173
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CollapseAnimation mIsClosing ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isShown ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSCustomizer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

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

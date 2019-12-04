.class Lcom/android/systemui/qs/customize/SecQSCustomizer$12;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
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

    .line 1244
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCustomizerAnimEnd()V
    .locals 3

    const-string v0, "SecQSCustomizer"

    const-string v1, "hideCustomizerAnimEnd"

    .line 1255
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1258
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 1259
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    .line 1261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CollapseAnimation mIsClosing ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isShown ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 1263
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return-void
.end method

.method public showCustomizerAnimEnd()V
    .locals 2

    const-string v0, "SecQSCustomizer"

    const-string/jumbo v1, "showCustomizerAnimEnd"

    .line 1247
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 1250
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$12;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    return-void
.end method

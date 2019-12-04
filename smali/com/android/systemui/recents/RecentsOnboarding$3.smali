.class Lcom/android/systemui/recents/RecentsOnboarding$3;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 288
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1900(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2002(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$902(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    goto :goto_0

    .line 295
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1302(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 298
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2100(Lcom/android/systemui/recents/RecentsOnboarding;)V

    :cond_2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 305
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2200(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2200(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2200(Lcom/android/systemui/recents/RecentsOnboarding;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2202(Lcom/android/systemui/recents/RecentsOnboarding;Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2002(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_2

    .line 314
    sget v0, Lcom/android/systemui/R$string;->gesture_recents_quick_scrub_onboarding:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    .line 313
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 315
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1302(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z

    .line 316
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2300(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 319
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$2400(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    .line 323
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1402(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 325
    :cond_4
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez p1, :cond_5

    .line 326
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$3;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1900(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    return-void
.end method

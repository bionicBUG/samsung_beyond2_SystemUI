.class Lcom/android/keyguard/KeyguardKnoxGuardView$6;
.super Ljava/lang/Object;
.source "KeyguardKnoxGuardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    const-string v2, "KeyguardKnoxGuardView"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 259
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 260
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 261
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$800(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x2

    const-string v7, "com.sec.android.inputmethod.height"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 262
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$900(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$dimen;->kg_knox_guard_company_name_margin_top:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 266
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->keyguard_carrier_label_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreDraw defaulttopMargin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->kg_knox_guard_company_name_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " diff : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " keyboardDiff : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_1

    if-lez v5, :cond_1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v5

    .line 269
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$1000(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    sub-int/2addr v4, v5

    .line 275
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLayout topMargin : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v4, v6, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    .line 276
    :goto_1
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 277
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$900(Lcom/android/keyguard/KeyguardKnoxGuardView;)Lcom/android/systemui/widget/SystemUITextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "Not necessary to update layout params"

    .line 255
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    .line 279
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1
.end method

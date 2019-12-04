.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;
.super Landroid/view/View$AccessibilityDelegate;
.source "FloatingShortcutAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateShortcutInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

.field final synthetic val$shortcutList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Ljava/util/ArrayList;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->val$shortcutList:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private findAccessibilityActionIndex(I)I
    .locals 2

    const/4 p0, 0x0

    .line 654
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->ACCESSIBILITY_ACTION_ID_ARR:[I

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 655
    aget v0, v0, p0

    if-ne v0, p1, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 633
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->val$shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 635
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->ACCESSIBILITY_ACTION_ID_ARR:[I

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 636
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    aget v0, v0, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->val$shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->getAppTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 639
    :cond_1
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->kg_floating_shortcut_show_app_list:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 644
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->findAccessibilityActionIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 646
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$700(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z

    const/4 p0, 0x1

    return p0

    .line 650
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
